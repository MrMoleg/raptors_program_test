
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>
#include <map> 
ros::Publisher processed_data;
std::list<std::string> data_list;
std::list<std::string> modify_data(std::string new_data)
{
   std::string data = new_data; // Access the received string
    std::istringstream stream(data);
    std::string line;
}

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  //ROS_INFO("data obtained: [%s]", msg->data.c_str());
  //std::string processed_data;
  //processed_data = msg->data;


}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "task1_recive");

  
  ros::NodeHandle n;

  /**
   * The subscribe() call is how you tell ROS that you want to receive messages
   * on a given topic.  This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing.  Messages are passed to a callback function, here
   * called chatterCallback.  subscribe() returns a Subscriber object that you
   * must hold on to until you want to unsubscribe.  When all copies of the Subscriber
   * object go out of scope, this callback will automatically be unsubscribed from
   * this topic.
   *
   * The second parameter to the subscribe() function is the size of the message
   * queue.  If messages are arriving faster than they are being processed, this
   * is the number of messages that will be buffered up before beginning to throw
   * away the oldest ones.
   */
// %Tag(SUBSCRIBER)%
  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
// %EndTag(SUBSCRIBER)%

  /**
   * ros::spin() will enter a loop, pumping callbacks.  With this version, all
   * callbacks will be called from within this thread (the main one).  ros::spin()
   * will exit when Ctrl-C is pressed, or the node is shutdown by the master.
   */
// %Tag(SPIN)%
  ros::spin();
// %EndTag(SPIN)%

  return 0;
}
// %EndTag(FULLTEXT)%

