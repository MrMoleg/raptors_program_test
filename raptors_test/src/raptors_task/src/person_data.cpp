
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>
#include <map> 



std::list<std::string> data_list;
ros::Publisher publicate; 
std::string modify_data(std::string new_data)
{
 // Access the received string
    std::istringstream stream(new_data);
    std::string line;

    std::map<std::string, std::string> parsed_data;
    while(std::getline(stream, line))
    {
      size_t separator_pos = line.find(": ");
      if(separator_pos != std::string::npos){
        std::string key = line.substr(0, separator_pos);
        std::string value = line.substr(separator_pos +2);
        parsed_data[key] = value;

      }
    }
    std::string begin_line = "[{  ";
    std::string end_line = " }]";
    bool first = true;
    std::ostringstream out_data;
    out_data<< begin_line;
    for (const auto& [key, value] : parsed_data) {
       if(!first){
        out_data<< ", " << "\n";
       }
        out_data << "\"" + key + "\"" + ": "+ "\"" + value + "\"";
        first = false;
       }
    
    out_data << end_line;
    std::string formatted_string = out_data.str();

    return formatted_string;
 
    }


void subscribeCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("data obtained [%s]");
  //std::string processed_data;
  //processed_data = msg->data;
  data_list.push_back(modify_data(msg->data));

  std_msgs::String pub_msg;

  std::ostringstream stream_to_pub;
  for (const auto& item: data_list)
  {
    stream_to_pub << item<< "\n";
  }

  pub_msg.data = stream_to_pub.str();
 
  publicate.publish(pub_msg);
  

}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "person_data");
  

  ros::NodeHandle pub;
  publicate = pub.advertise<std_msgs::String>("Raptors/Serialized", 100);
  ros::NodeHandle sub;
  ros::Subscriber subscribe = sub.subscribe("Raptors/Person", 100, subscribeCallback);
  ros::Rate loop_rate(1);
  while(ros::ok()){
  
    
    ros::spin();
    loop_rate.sleep();
  }
  


  return 0;
}




