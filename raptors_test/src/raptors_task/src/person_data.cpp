
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>
#include <map> 
#include <regex>


bool check_data (std::map<std::string, std::string> check_key);
void sort_data(std::list<std::string> data_list);
std::string extractSurname(const std::string& json_string);
std::string extractName(const std::string& json_string) ;
std::list<std::string> data_list;
ros::Publisher publicate; 
bool first_data = true;

// Recieve msg data, process it and add to the string list
void modify_data(std::string new_data, std::list<std::string>& data_list)
{

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
    if (check_data(parsed_data)){
      std::string begin_line = "{  ";
      std::string end_line = " }";
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
      
      if(!first_data){
        out_data<< ",";
      }
      first_data = false;
      std::string formatted_string = out_data.str();
      data_list.push_back(formatted_string);
      // Sorting the list
      data_list.sort([](const std::string& a, const std::string& b) {
        std::string surname_a = extractSurname(a);
        std::string surname_b = extractSurname(b);
          if (surname_a != surname_b) {
            return surname_a < surname_b;
          }
        std::string name_a = extractName(a); 
        std::string name_b = extractName(b);
        return name_a < name_b; 
    });
    }else{
      // LOG Info 
      ROS_INFO("Data is not correct. Your data: [%s]", new_data.c_str());
    }
    
 
    }
// check with the key whether the data obtained is suitable
bool check_data (std::map<std::string, std::string> check_key)
{
  int correct_data = 0;
  int invalid_data = 0;
  for(const auto &pair : check_key)
  {
    if (pair.first == "IndexNumber" ||
        pair.first == "Name" ||
        pair.first == "Surname" ||
        pair.first == "Section" ||
        pair.first == "YearOfBirth"
        ){
      correct_data++;
    }else
     {
      invalid_data++;
    }
  }
  if (correct_data == 5 && invalid_data ==0){
    return true;
  }else{
    return false;
  }
 
 
}
// Extracts Surname from the JSON-like string 
std::string extractSurname(const std::string& json_string) {
    std::regex surname_regex("\"Surname\":\\s*\"([^\"]+)\"");
    std::smatch match;
    if (std::regex_search(json_string, match, surname_regex)) {
        return match[1]; // Return the extracted surname
    }
    return ""; // Return an empty string if no match is found
}
// Extracts Name from the JSON-like string 
std::string extractName(const std::string& json_string) {
    std::regex name_regex("\"Name\":\\s*\"([^\"]+)\"");
    std::smatch match;
    if (std::regex_search(json_string, match, name_regex)) {
        return match[1]; // Return the extracted surname
    }
    return ""; // Return an empty string if no match is found
}

void subscribeCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("%s", "data obtained");
  //std::string processed_data;
  //processed_data = msg->data;
  modify_data(msg->data, data_list);

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


