import cv2
import rosbag
import argparse
import sensor_msgs.point_cloud2 as pc2
import pandas as pd
from cv_bridge import CvBridge
from tqdm import tqdm
import datetime
import time
import matplotlib.pyplot as plt

bridge = CvBridge()


# with rosbag.Bag("/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/1.bag", "r") as bag:
#     img_msgs = [msg for _, msg, _ in bag.read_messages(topics=["/pylon_camera_node/image_raw"])]
#     pc_msgs = [msg for _, msg, _ in bag.read_messages(topics=["/velodyne_points"])]
#     imu_msgs = [msg for _, msg, _ in bag.read_messages(topics=["/vectornav/IMU"])]


#     img_time = datetime.datetime.utcfromtimestamp(img_msgs[10].header.stamp.to_sec())
#     imu_time = datetime.datetime.utcfromtimestamp(imu_msgs[100].header.stamp.to_sec())
#     timestamp100imu = 1692859661.59149
#     imu_100_time = datetime.datetime.utcfromtimestamp(timestamp100imu)
#     print(f"Image time: {img_time}      IMU time: {imu_time}        IMU TIME 100: {imu_100_time}")

acc_x = []    
    
counter = 0
with rosbag.Bag("/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/1.bag", "r") as bag:
    
    imu_msgs = [msg for _, msg, _ in bag.read_messages(topics=["/vectornav/IMU"])]
    for msg in imu_msgs:
        counter += 1
        acc_x.append(msg.linear_acceleration.x)
        print("NUMBER: ", counter, "    LINEAR ACCELERATION: ", msg.linear_acceleration.x)
        

plt.plot(acc_x)
plt.show()