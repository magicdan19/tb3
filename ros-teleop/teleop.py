#!/usr/bin/env python

import rospy

from sensor_msgs.msg import Joy, JointState, Twist
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint


class JoyToCommands(object):
        """Control a robot arm using Joy messages"""

    def __init__(self):
        self.twist_pub = rospy.Publisher('/twist', Twist, queue_size=1)
        rospy.Subscriber("/joy", Joy, callback=self.joy_cb, queue_size=1)
        self.linear_vel_multiplier = 0.3
        self.angular_vel_multiplier = 0.2

    def joy_cb(self, joy_msg):
        rospy.logdebug_throttle(0.5, "received joy message: {}".format(joy_msg))

        twist_cmd = Twist()
        twist_cmd.linear.x = self.linear_vel_multiplier * joy_msg.axes[3]
        twist_cmd.linear.y = self.linear_vel_multiplier * joy_msg.axes[2]
        twist_cmd.linear.z = self.linear_vel_multiplier * joy_msg.axes[1]
        twist_cmd.angular.z = self.angular_vel_multiplier * joy_msg.axes[0]

        self.twist_pub.publish(twist_cmd)


if __name__ == '__main__':
    rospy.init_node("joy2commands", log_level=rospy.INFO)
    JoyToCommands()
    rospy.spin()