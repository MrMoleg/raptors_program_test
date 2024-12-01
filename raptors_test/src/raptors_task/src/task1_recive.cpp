#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>
#include <map>
#include <raptors_task/Person.h>

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  
  ROS_INFO("I heard: [%s]", msg->data.c_str());


}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "task1_recive");


  ros::NodeHandle n;
  


  ros::Subscriber sub = n.subscribe("Raptors/Serialized1", 1000, chatterCallback);
  


  ros::spin();

  return 0;
}
