#include "ros/ros.h"

#include "std_msgs/String.h"
#include <sstream>
#include <sstream>
#include <string>
#include <iostream>
#include <map>
#include <raptors_task/Person.h>

ros::Publisher chatter_pub;
bool subscriber_connected = false;

// Callback function that gets triggered when a subscriber connects or disconnects
void subscriberCallback(const ros::SingleSubscriberPublisher& pub) {
    if (chatter_pub.getNumSubscribers() > 0) {
        subscriber_connected = true;  // Set to true when the subscriber connects
    } else {
        subscriber_connected = false;  // Set to false if the subscriber disconnects
    }
}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "task1_send");

  ros::NodeHandle n;

  chatter_pub = n.advertise<raptors_task::Person>("Raptors/Person1", 1000, true);
  //ros::Subscriber sub = n.subscribe("Raptors/Person", 1000, subscriberCallback);

  ros::Rate loop_rate(50);
  int loops_number =0;


  int message_to_send = 0;
  int count = 0;
  std::stringstream ss;
  raptors_task::Person msg11;
        msg11.IndexNumber = 31415;
        msg11.Name = "Ada";
        msg11.Surname = "Lovelace";
        msg11.Section = "Programmers";
        msg11.YearOfBirth = 1815;

    raptors_task::Person msg12;
        msg12.IndexNumber = 1618;
        msg12.Name = "Jan";
        msg12.Surname = "Kowalski";
        msg12.Section = "Marketing";
        msg12.YearOfBirth = 2004;

raptors_task::Person msg1;
msg1.IndexNumber = 10001;
msg1.Name = "Alan";
msg1.Surname = "Turing";
msg1.Section = "Mathematics";
msg1.YearOfBirth = 1912;

raptors_task::Person msg2;
msg2.IndexNumber = 10002;
msg2.Name = "Grace";
msg2.Surname = "Hopper";
msg2.Section = "Computer Science";
msg2.YearOfBirth = 1906;

raptors_task::Person msg3;
msg3.IndexNumber = 10003;
msg3.Name = "Katherine";
msg3.Surname = "Johnson";
msg3.Section = "Aerospace";
msg3.YearOfBirth = 1918;

raptors_task::Person msg4;
msg4.IndexNumber = 10004;
msg4.Name = "Carl";
msg4.Surname = "Gauss";
msg4.Section = "Mathematics";
msg4.YearOfBirth = 1777;

raptors_task::Person msg5;
msg5.IndexNumber = 10005;
msg5.Name = "Marie";
msg5.Surname = "Curie";
msg5.Section = "Physics";
msg5.YearOfBirth = 1867;

raptors_task::Person msg6;
msg6.IndexNumber = 10006;
msg6.Name = "Nikola";
msg6.Surname = "Tesla";
msg6.Section = "Engineering";
msg6.YearOfBirth = 1856;

raptors_task::Person msg7;
msg7.IndexNumber = 10007;
msg7.Name = "Leonardo";
msg7.Surname = "da Vinci";
msg7.Section = "Art and Science";
msg7.YearOfBirth = 1452;

raptors_task::Person msg8;
msg8.IndexNumber = 10008;
msg8.Name = "Rosalind";
msg8.Surname = "Franklin";
msg8.Section = "Biology";
msg8.YearOfBirth = 1920;

raptors_task::Person msg9;
msg9.IndexNumber = 10009;
msg9.Name = "Michael";
msg9.Surname = "Faraday";
msg9.Section = "Physics";
msg9.YearOfBirth = 1791;

raptors_task::Person msg10;
msg10.IndexNumber = 10010;
msg10.Name = "Ada";
msg10.Surname = "Byron";
msg10.Section = "Poetry";
msg10.YearOfBirth = 1835;



 while (ros::ok() && chatter_pub.getNumSubscribers() == 0) {
        // Process any incoming messages (check for subscriber connection)
        ros::spinOnce();  
        ROS_INFO("Waiting for subscriber to connect...");
        loop_rate.sleep();  // Sleep to maintain the loop rate
    }

    while (loops_number < 3)
  {
    
    switch (message_to_send) {
    case 0:
        chatter_pub.publish(msg1);
        break;
    case 1:
        chatter_pub.publish(msg2);
        break;
    case 2:
        chatter_pub.publish(msg3);
        break;
    case 3:
        chatter_pub.publish(msg4);
        break;
    case 4:
        chatter_pub.publish(msg5);
        break;
    case 5:
        chatter_pub.publish(msg6);
        break;
    case 6:
        chatter_pub.publish(msg7);
        break;
    case 7:
        chatter_pub.publish(msg8);
        break;
    case 8:
        chatter_pub.publish(msg9);
        break;
    case 9:
        chatter_pub.publish(msg10);
        break;
    case 10:
        chatter_pub.publish(msg11);
        break;
    case 11:
        chatter_pub.publish(msg12);
        break;
    default:
        ROS_WARN("Invalid message_to_send value: %d", message_to_send);
        break;
}
    message_to_send++;
    if(message_to_send > 11){
      message_to_send =0;
      loops_number++;
    }
    ros::spinOnce();
    loop_rate.sleep();

    
  }


  return 0;
}
