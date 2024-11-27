#include "ros/ros.h"

#include "std_msgs/String.h"
#include <sstream>
#include <sstream>
#include <string>
#include <iostream>
#include <map>
#include <raptors_task/Person.h>


int main(int argc, char **argv)
{

  ros::init(argc, argv, "task1_send");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<raptors_task::Person>("Raptors/Person1", 1000);

  ros::Rate loop_rate(1);


  bool message_to_send = true;
  int count = 0;
  std::stringstream ss;
  raptors_task::Person msg1;
        msg1.IndexNumber = 31415;
        msg1.Name = "Ada";
        msg1.Surname = "Lovelace";
        msg1.Section = "Programmers";
        msg1.YearOfBirth = 1815;

    raptors_task::Person msg2;
        msg2.IndexNumber = 1618;
        msg2.Name = "Jan";
        msg2.Surname = "Kowalski";
        msg2.Section = "Marketing";
        msg2.YearOfBirth = 2004;

    while (ros::ok())
  {
    
    if (message_to_send == true){
      chatter_pub.publish(msg1);
    }else{
      chatter_pub.publish(msg2);
    }
    
    message_to_send = !message_to_send;
    

    ros::spinOnce();
    loop_rate.sleep();

    ++count;
  }


  return 0;
}
