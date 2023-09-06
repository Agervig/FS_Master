import cv2
import rosbag
import argparse
import sensor_msgs.point_cloud2 as pc2
import pandas as pd
from cv_bridge import CvBridge
from tqdm import tqdm


def extract_synchronized_data(bag_file, output_dir_img, output_dir_pc, output_dir_imu, time_threshold=0.05):
    
    bridge = CvBridge()


    with rosbag.Bag(bag_file, "r") as bag:
        img_msgs = [msg for _, msg, _ in bag.read_messages(topics=["/pylon_camera_node/image_raw"])]
        pc_msgs = [msg for _, msg, _ in bag.read_messages(topics=["/velodyne_points"])]
        imu_msgs = [msg for _, msg, _ in bag.read_messages(topics=["/vectornav/IMU"])]

        counter = 0
        imu_data = []

        for img_msg in tqdm(img_msgs, desc="Processing", unit="img"):
            closest_pc_msg = min(pc_msgs, key=lambda x: abs(img_msg.header.stamp.to_sec() - x.header.stamp.to_sec()))
            closest_imu_msg = min(imu_msgs, key=lambda x: abs(img_msg.header.stamp.to_sec() - x.header.stamp.to_sec()))

            img_pc_time_diff = abs(img_msg.header.stamp.to_sec() - closest_pc_msg.header.stamp.to_sec())
            img_imu_time_diff = abs(img_msg.header.stamp.to_sec() - closest_imu_msg.header.stamp.to_sec())
            pc_imu_time_diff = abs(closest_pc_msg.header.stamp.to_sec() - closest_imu_msg.header.stamp.to_sec())

            if img_pc_time_diff < time_threshold and img_imu_time_diff < time_threshold and pc_imu_time_diff < time_threshold:
                cv_image = bridge.imgmsg_to_cv2(img_msg, "bgr8")
                img_filename = f"{output_dir_img}/image_{counter}.jpg"
                cv2.imwrite(img_filename, cv_image)

                gen = pc2.read_points(closest_pc_msg, field_names=("x", "y", "z", "intensity", "ring", "time"), skip_nans=True)
                df = pd.DataFrame(list(gen), columns=["x", "y", "z", "intensity", "ring", "time"])
                pc_filename = f"{output_dir_pc}/pointcloud_{counter}.csv"
                df.to_csv(pc_filename, index=False)

                #Saving last 10 imu messages first index is the "oldest" timestamp
                imu_index = imu_msgs.index(closest_imu_msg)
                imu_subset = imu_msgs[max(0, imu_index - 9):imu_index+1]
                imu_data = []

                for msg in imu_subset:         
                    data = {
                        "timestamp": msg.header.stamp.to_sec(),
                        "orientation_x": msg.orientation.x,
                        "orientation_y": msg.orientation.y,
                        "orientation_z": msg.orientation.z,
                        "orientation_w": msg.orientation.w,
                        "angular_velocity_x": msg.angular_velocity.x,
                        "angular_velocity_y": msg.angular_velocity.y,
                        "angular_velocity_z": msg.angular_velocity.z,
                        "linear_acceleration_x": msg.linear_acceleration.x,
                        "linear_acceleration_y": msg.linear_acceleration.y,
                        "linear_acceleration_z": msg.linear_acceleration.z
                    }
                    imu_data.append(data)

                imu_df = pd.DataFrame(imu_data)
                imu_filename = f"{output_dir_imu}/imu_data_{counter}.csv"
                imu_df.to_csv(imu_filename, index=False)

                counter += 1


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Extract synchronized images, point clouds, and IMU data from a rosbag file.")
    parser.add_argument("bag_file", help="Path to the bag file.")
    parser.add_argument("output_dir_img", help="Path to the output directory for images.")
    parser.add_argument("output_dir_pc", help="Path to pointcloud output directory.")
    parser.add_argument("output_dir_imu", help="Path to imu output directory.")
    args = parser.parse_args()

    print("Starting extraction")
    extract_synchronized_data(args.bag_file, args.output_dir_img, args.output_dir_pc, args.output_dir_imu)
    print("Finished extraction. Closing program")