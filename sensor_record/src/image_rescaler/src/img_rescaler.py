#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CVBridge
import cv2


class ImageRescaler:

    def __init__(self):

        self.pub = rospy.Publisher("rescaled_image", Image, queue_size=10)
        self.sub = rospy.Subscriber("pylon_camera_node/image_raw", Image, self.callback)
        self.bridge = CVBridge()


    def callback(self, data):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        except Exception as e:
            rospy.logerr("Could not convert from '{}' to 'bgr8'. Error {}".format(data.encoding, e))

            return

        rescaled_img = cv2.resize(cv_image, (960, 600))

        try:
            ros_img = self.bridge.cv2_to_imgmsg(rescaled_img, "bgr8")
            self.pub.publish(ros_img)
        except Exception as e:
            rospy.logerr("Error during conversion: {}".format(e))


if name == "__main__":
    rospy.init_node("image_rescaler_node", anonymous=True)
    ir = ImageRescaler()
    rospy.spin()
