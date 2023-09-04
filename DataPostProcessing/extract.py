#!/usr/bin/env python

import cv2
import rosbag
import argparse
from cv_bridge import CvBridge
from cv_bridge.core import CvBridgeError



def extract_images_from_bag(bag_path, output_dir):
    image_topic = "/pylon_camera_node/image_raw"
    bridge = CvBridge()

    with rosbag.Bag(bag_path, "r") as bag:
        for idx, (topic, msg, t) in enumerate(bag.read_messages(topics=[image_topic])):
            if topic == image_topic:
                try:
                    cv_image = bridge.imgmsg_to_cv2(msg, "bgr8")
                    cv2.imwrite(output_dir + "/image_{:04}.jpg".format(idx), cv_image)
                except CvBridgeError as e:
                    print(e)

    print("Finished extracting images.")

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description="Extract images from a rosbag file.")
    parser.add_argument("bag_file", help="Path to the bag file.")
    parser.add_argument("output_dir", help="Path to the output directory.")
    args = parser.parse_args()
    
    print("Starting image extraction")
    extract_images_from_bag(args.bag_file, args.output_dir)
