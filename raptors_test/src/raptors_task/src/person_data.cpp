
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>
#include <map> 
#include <regex>
#include <raptors_task/Person.h>


bool check_data (raptors_task::Person check_msg);
void sort_data(std::list<std::string> data_list);
std::string extractSurname(const std::string& json_string);
std::string extractName(const std::string& json_string) ;
std::list<std::string> data_list;
ros::Publisher publicate;


// Recieve msg data, process it and add to the string list
int modify_data(const raptors_task::Person& new_data, std::list<std::string>& data_list)
{


    if (!check_data(new_data)){
      return 0;
    };
    std::stringstream new_data_stream;
   
    
    new_data_stream << ", "<<"{ "<< "\"" <<"IndexNumber" <<  "\""<<": " << "\"" << new_data.IndexNumber<< "\""<< ","<< "\n"
                    << "\"" <<"Name" <<  "\""<<": " << "\"" << new_data.Name<< "\"" << "," << "\n"
                    << "\"" <<"Surname" <<  "\""<<": " << "\"" << new_data.Surname<< "\"" << ","<< "\n"
                    << "\"" <<"Sectrion" <<  "\""<<": " << "\"" << new_data.Section<< "\""<< ","<< "\n"
                    << "\"" <<"YearOfBirth" <<  "\""<<": " << "\"" << new_data.YearOfBirth<< "\""<< " }";

      
      std::string formatted_string = new_data_stream.str();
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
    std::string &first_element = data_list.front();
    if (first_element.front() == ','){
        first_element.erase(0, 1);
    }
    
    return 1;
 
    }
// check with the key whether the data obtained is suitable
bool check_data (raptors_task::Person check_msg)
{
  
  if(check_msg.IndexNumber < 0 or check_msg.IndexNumber > 99999)
  {
    ROS_WARN("The Index number is not correct for [%s]", check_msg.Name.c_str());
    ROS_WARN("Range for Index numbers should be from 0 to 99999");
    ROS_WARN("Your index number: [%d]", check_msg.IndexNumber);
    return 0;
  }
  if (check_msg.Name.empty()){
    ROS_WARN("The name is not correct for [%d] [%s] ", check_msg.IndexNumber,  check_msg.Surname.c_str());
    ROS_WARN("The name should be included\n");
    return 0;
  }
  if (check_msg.Surname.empty()){
    ROS_WARN("The surname is not correct for [%d] [%s]", check_msg.IndexNumber, check_msg.Name.c_str());
    ROS_WARN("The surname should be included\n");
    return 0;
  }
  if (check_msg.Section.empty()){
    ROS_WARN("The Section is not correct for [%d] [%s] [%s]", check_msg.IndexNumber, check_msg.Name.c_str(), check_msg.Surname.c_str());
    ROS_WARN("The Section should be included\n");
    return 0;
  }
  if (check_msg.YearOfBirth > 2008 or check_msg.YearOfBirth< 1800){
    ROS_WARN("The date of birth is not correct for [%d] [%s] [%s]", check_msg.IndexNumber, check_msg.Name.c_str(), check_msg.Surname.c_str());
    ROS_WARN("Range for birth date should be from 1800 to 2008");
    ROS_WARN("Your birth date: [%d]", check_msg.YearOfBirth);
    return 0;
  }
  
  return 1;
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

void subscribeCallback(const raptors_task::Person::ConstPtr& msg)
{
  
  ROS_INFO("%s", "data obtained");
  //ROS_INFO("Received message: %s %s", msg->Name.c_str(), msg->Surname.c_str());
  
  if(modify_data(*msg, data_list)){
    std_msgs::String pub_msg;

  std::ostringstream stream_to_pub;
  for (const auto& item: data_list)
  {
    stream_to_pub << item<< "\n";
  }

  pub_msg.data = stream_to_pub.str();
 
  publicate.publish(pub_msg);}
  }
  
  


int main(int argc, char **argv)
{
  ros::init(argc, argv, "person_data");
   ros::NodeHandle pub;
 
  publicate = pub.advertise<std_msgs::String>("Raptors/Serialized", 20000, true);
  
  ros::NodeHandle sub;
  ros::Subscriber subscribe = sub.subscribe("Raptors/Person", 20000, subscribeCallback);
    
  ros::spin();
  


  return 0;
}


