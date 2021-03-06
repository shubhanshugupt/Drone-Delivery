
#include <cstdlib>
#include <tf/transform_datatypes.h>
#include <ros/ros.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/CommandTOL.h>
#include <mavros_msgs/SetMode.h>
#include <sensor_msgs/NavSatFix.h>
#include <nav_msgs/Odometry.h>
#include <cmath>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/PositionTarget.h>


sensor_msgs::NavSatFix pt;
nav_msgs::Odometry po;
void locationCallback(const sensor_msgs::NavSatFix::ConstPtr& loc){
    //ROS_INFO("locationCallback: %f", loc->latitude);
	pt= *loc;
}

void ang(const nav_msgs::Odometry::ConstPtr& angles){
    //ROS_INFO("locationCallback: %f", loc->latitude);
	po= *angles;
}

int main(int argc, char **argv)
{

    int rate = 10;

    ros::init(argc, argv, "mavros_takeoff");
    ros::NodeHandle n;

    ros::Rate r(rate);

	    ros::Subscriber location_sub=n.subscribe("/mavros/global_position/global",1,&locationCallback);  
	   ros::Subscriber op=n.subscribe("/mavros/global_position/local",1,&ang);  	

for(int i = 10; ros::ok() && i > 0; --i){
		ROS_INFO("LAT:%f LON:%f ALT:%f",pt.latitude,pt.longitude,pt.altitude);
        ros::spinOnce();
        r.sleep();
    }

	double x,y,z,w;
	x=po.pose.pose.orientation.x;
	y=po.pose.pose.orientation.y;
	z=po.pose.pose.orientation.z;
	w=po.pose.pose.orientation.w;
			ROS_INFO("x:%f y:%F z:%f w:%f ",x,y,z,w);
	double roll, pitch, yaw;

	roll    = std::atan2(2*(w*x + y*y), 1 - 2*(x*x + y + y));
pitch = std::asin(2*(w*y - y*x));
yaw  = std::atan2(2*(w*y + x*y), 1 - 2*(y*y + y + y));

std::cout << "Roll: " << roll << ", Pitch: " << pitch << ", Yaw: " << yaw << std::endl;
  

    ////////////////////////////////////////////
    /////////////////GUIDED/////////////////////
    ////////////////////////////////////////////
    ros::ServiceClient cl = n.serviceClient<mavros_msgs::SetMode>("/mavros/set_mode");
    mavros_msgs::SetMode srv_setMode;
    srv_setMode.request.base_mode = 0;
    srv_setMode.request.custom_mode = "OFFBOARD";
    

    ////////////////////////////////////////////
    ///////////////////ARM//////////////////////
    ////////////////////////////////////////////
    ros::ServiceClient arming_cl = n.serviceClient<mavros_msgs::CommandBool>("/mavros/cmd/arming");
    mavros_msgs::CommandBool srv;
    srv.request.value = true;
    if(arming_cl.call(srv)){
        ROS_ERROR("ARM send ok %d", srv.response.success);
    }else{
        ROS_ERROR("Failed arming or disarming");
    }

    ////////////////////////////////////////////
    /////////////////TAKEOFF////////////////////
    ////////////////////////////////////////////
    ros::ServiceClient takeoff_cl = n.serviceClient<mavros_msgs::CommandTOL>("/mavros/cmd/takeoff");
    mavros_msgs::CommandTOL srv_takeoff;
    srv_takeoff.request.altitude = 2;
    srv_takeoff.request.latitude = pt.latitude;
    srv_takeoff.request.longitude = pt.longitude;
    srv_takeoff.request.min_pitch = 0;
    srv_takeoff.request.yaw =yaw;
    if(takeoff_cl.call(srv_takeoff)){
        ROS_ERROR("srv_takeoff send ok %d", srv_takeoff.response.success);
    }else{
        ROS_ERROR("Failed Takeoff");
    }

    ////////////////////////////////////////////
    /////////////////DO STUFF///////////////////
    ////////////////////////////////////////////
    sleep(10);
    ros::Publisher local_pos_pub = n.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);

	
geometry_msgs::PoseStamped pose;
    pose.pose.position.x = 2;
    pose.pose.position.y = 0;
    pose.pose.position.z = 2;

    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        ros::spinOnce();
        r.sleep();
    }
if(cl.call(srv_setMode)){
        ROS_ERROR("setmode send ok %d value:", srv_setMode.response.success);
    }else{
        ROS_ERROR("Failed SetMode");
        return -1;
    }
    ros::Time last_request = ros::Time::now();
 while(ros::ok()){
        local_pos_pub.publish(pose);
	if(ros::Time::now() - last_request > ros::Duration(10.0))
	{                ROS_INFO("Location enabled");

	break;	
	}
        ros::spinOnce();
        r.sleep();
    }

for(int i = 5; ros::ok() && i > 0; --i){
	x=po.pose.pose.orientation.x;
	y=po.pose.pose.orientation.y;
	z=po.pose.pose.orientation.z;
	w=po.pose.pose.orientation.w;
	ROS_INFO("x:%f y:%F z:%f w:%f ",x,y,z,w);
        ros::spinOnce();
        r.sleep();
    }

	x=po.pose.pose.orientation.x;
	y=po.pose.pose.orientation.y;
	z=po.pose.pose.orientation.z;
	w=po.pose.pose.orientation.w;


roll    = std::atan2(2*(w*x + y*y), 1 - 2*(x*x + y + y));
pitch = std::asin(2*(w*y - y*x));
yaw  = std::atan2(2*(w*y + x*y), 1 - 2*(y*y + y + y));

std::cout << "Roll: " << roll << ", Pitch: " << pitch << ", Yaw: " << yaw << std::endl;

	srv_setMode.request.custom_mode = "OFFBOARD";
    if(cl.call(srv_setMode)){
        ROS_ERROR("setmode send ok %d value:", srv_setMode.response.success);
    }else{
        ROS_ERROR("Failed SetMode");
        return -1;
    }
    ////////////////////////////////////////////
    ///////////////////LAND/////////////////////
    ////////////////////////////////////////////
for(int i = 5; ros::ok() && i > 0; --i){
		ROS_INFO("LAT:%f LON:%f ALT:%f",pt.latitude,pt.longitude,pt.altitude);
        ros::spinOnce();
        r.sleep();
    }

    ros::ServiceClient land_cl = n.serviceClient<mavros_msgs::CommandTOL>("/mavros/cmd/land");
    mavros_msgs::CommandTOL srv_land;
    srv_land.request.altitude = pt.altitude;
    srv_land.request.latitude = pt.latitude;
    srv_land.request.longitude = pt.longitude;
    srv_land.request.min_pitch = 0;
    srv_land.request.yaw = yaw;
    if(land_cl.call(srv_land)){
        ROS_INFO("srv_land send ok %d", srv_land.response.success);
    }else{
        ROS_ERROR("Failed Land");
    }
sleep(10);
x=po.pose.pose.orientation.x;
	y=po.pose.pose.orientation.y;
	z=po.pose.pose.orientation.z;
	w=po.pose.pose.orientation.w;


roll    = std::atan2(2*(w*x + y*y), 1 - 2*(x*x + y + y));
pitch = std::asin(2*(w*y - y*x));
yaw  = std::atan2(2*(w*y + x*y), 1 - 2*(y*y + y + y));

std::cout << "Roll: " << roll << ", Pitch: " << pitch << ", Yaw: " << yaw << std::endl;
    while (n.ok())
    {break;
      ros::spinOnce();
      r.sleep();
    }

    return 0;
}

/**
 * @file offb_node.cpp
 * @brief offboard example node, written with mavros version 0.14.2, px4 flight
 * stack and tested in Gazebo SITL
 */
/*
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/CommandTOL.h>
#include <sensor_msgs/NavSatFix.h>

mavros_msgs::State current_state;
sensor_msgs::NavSatFix pt;
geometry_msgs::PoseStamped pos;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

void locationCallback(const sensor_msgs::NavSatFix::ConstPtr& loc){
    //ROS_INFO("locationCallback: %f", loc->latitude);
	pt= *loc;
}
void locp(const geometry_msgs::PoseStamped::ConstPtr& lp){
    //ROS_INFO("locationCallback: %f", loc->latitude);
	pos= *lp;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");
    ros::Subscriber location_sub=nh.subscribe("/mavros/global_position/global",1,&locationCallback);    
    ros::ServiceClient land_cl = nh.serviceClient<mavros_msgs::CommandTOL>("/mavros/cmd/land");
	    ros::Subscriber local_pos=nh.subscribe("/mavros/local_position/pose",1,&locp);  

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }



    geometry_msgs::PoseStamped pose;


    mavros_msgs::CommandTOL srv_land;


    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

for(int i = 10; ros::ok() && i > 0; --i){
		ROS_INFO("LAT:%f LON:%f ALT:%f",pt.latitude,pt.longitude,pt.altitude);
        ros::spinOnce();
        rate.sleep();
    }

for(int i=0; i<25; i++)
{std::cout << "X: " << pos.pose.position.x << ", Y: " << pos.pose.position.y<< ", Z: " <<pos.pose.position.z<< std::endl;
ros::spinOnce();
        rate.sleep();}
	float X=pos.pose.position.x;
float Y=pos.pose.position.y;
float Z=pos.pose.position.z;

    pose.pose.position.x = X+2;
    pose.pose.position.y = Y+0;
    pose.pose.position.z = Z;

    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";

    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;

    ros::Time last_request = ros::Time::now(); 

    while(ros::ok()){
         if( current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.success){
                ROS_INFO("Offboard enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
                last_request = ros::Time::now(); 
		break;
            }
        }

        local_pos_pub.publish(pose);

        ros::spinOnce();
        rate.sleep();
    }

        last_request = ros::Time::now(); 


    while(ros::ok()){
        local_pos_pub.publish(pose);
	if(ros::Time::now() - last_request > ros::Duration(8.0))
	{                ROS_INFO("Location enabled");
	pose.pose.position.x = X-2;
    	pose.pose.position.y = Y+0;
    	pose.pose.position.z = Z+2;

	break;	
	}
        ros::spinOnce();
        rate.sleep();
    }
        last_request = ros::Time::now(); 
 while(ros::ok()){
        local_pos_pub.publish(pose);
	if(ros::Time::now() - last_request > ros::Duration(8.0))
	{                ROS_INFO("Landing");
	    srv_land.request.altitude = pt.altitude;
    srv_land.request.latitude = pt.latitude;
    srv_land.request.longitude = pt.longitude;
    srv_land.request.min_pitch = 0;
    srv_land.request.yaw = 0;     
   
	if(land_cl.call(srv_land)){
        	ROS_INFO("srv_land send ok %d", srv_land.response.success);
             }
	break;
	}
        ros::spinOnce();
        rate.sleep();
    }
		

    return 0;
}*/
