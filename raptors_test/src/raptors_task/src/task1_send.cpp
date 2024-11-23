#include "ros/ros.h"

#include "std_msgs/String.h"
#include <sstream>
#include <sstream>
#include <string>
#include <iostream>
#include <map>


int main(int argc, char **argv)
{

  ros::init(argc, argv, "task1_send");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("Raptors/Person", 1000);

  ros::Rate loop_rate(1);

  std::list<std::string> data_to_send1 = {"IndexNumber: 31415",
  "Name: Ada",
  "Surname: Lovelace",
  "Section: Programmers",
  "YearOfBirth: 1815"};

  std::list<std::string> data_to_send2 = {"IndexNumber: 1618",
    "Name: Jan",
    "Surname: Kowalski",
    "Section: Marketing",
    "YearOfBirth: 2004"
};

std::list<std::string> data_to_send3 = {"IndexNumber: 1618",
    "Name: Jan",
    "Surname: Kowalski",
    "Section: Marketing",
};

std::list<std::string> data_to_send4 = {"FFFggg: 1618", 
    "RORRORORORO",
    "BIBO"
};


  int count = 0;
  std::stringstream ss;
  std_msgs::String msg;
  while (ros::ok())
  {
    for (const auto &line: data_to_send1){
    ss<< line << "\n";
  }

  
  msg.data = ss.str();



    ROS_INFO("%s", msg.data.c_str());


    chatter_pub.publish(msg);
    ss.str(std::string());
////////////////////
    for (const auto &line: data_to_send2){
    ss<< line << "\n";
  }

  msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());
    chatter_pub.publish(msg);
    ss.str(std::string());
////////////////////
    for (const auto &line: data_to_send3){
    ss<< line << "\n";
  }
  msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());
    chatter_pub.publish(msg);
    ss.str(std::string());
////////////////
for (const auto &line: data_to_send4){
    ss<< line << "\n";
  }

  msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());
    chatter_pub.publish(msg);
    ss.str(std::string());

    ros::spinOnce();

    loop_rate.sleep();

    ++count;
  }


  return 0;
}
