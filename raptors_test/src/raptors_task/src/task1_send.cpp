#include "ros/ros.h"

#include "std_msgs/String.h"
#include <sstream>
#include <sstream>
#include <string>
#include <iostream>
#include <map>

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{

  ros::init(argc, argv, "task1_send");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("Raptors/Person", 1000);

  ros::Rate loop_rate(1);

  std::list<std::string> data_to_send = {"IndexNumber: 31415",
  "Name: Ada",
  "Surname: Lovelace",
  "Section: Programmers",
  "YearOfBirth: 1815"};

  int count = 0;
  std::stringstream ss;
  for (const auto &line: data_to_send){
    ss<< line << "\n";
  }

  std_msgs::String msg;
  msg.data = ss.str();
  while (ros::ok())
  {


// %Tag(ROSCONSOLE)%
    ROS_INFO("%s", msg.data.c_str());
// %EndTag(ROSCONSOLE)%

    
    chatter_pub.publish(msg);
// %EndTag(PUBLISH)%

// %Tag(SPINONCE)%
    ros::spinOnce();
// %EndTag(SPINONCE)%

// %Tag(RATE_SLEEP)%
    loop_rate.sleep();
// %EndTag(RATE_SLEEP)%
    ++count;
  }


  return 0;
}
// %EndTag(FULLTEXT)%