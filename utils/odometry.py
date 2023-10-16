import matplotlib.pyplot as plt
import numpy as np
import open3d as o3d
import csv
import os
from collections import defaultdict

def read_point_cloud_from_csv(filename):
    point_cloud = np.array([], dtype=float)
    with open(filename, "r") as csv_file:
        csv_reader = csv.reader(csv_file)
        next(csv_reader)  # Skip the header row
        for row in csv_reader:
            if len(row) >= 3:
                x, y = map(float, row[:2])
                point_cloud = np.append(point_cloud, [x, y, 0]) # We need all 3 for Open3D, but project to 2D-plane
    point_cloud = point_cloud.reshape(-1, 3)
    return point_cloud

def visualize_point_cloud(point_cloud, title):
    x = point_cloud[:, 0]
    y = point_cloud[:, 1]

    plt.figure(figsize=(8, 6))
    plt.scatter(x, y, s=10, c="b", marker="o", label="Point Cloud")
    plt.xlabel("X Coordinate")
    plt.ylabel("Y Coordinate")
    plt.title(title)
    plt.grid(True)
    plt.legend()
    #plt.show(block=False)
    plt.show()
    #plt.pause(1)
    #plt.close()

def read_all_point_clouds(csv_directory):
    point_clouds = []
    for i in range(3):
        csv_filename = os.path.join(csv_directory, f"{i}.csv")
        point_cloud_data = read_point_cloud_from_csv(csv_filename)
        point_clouds.append(point_cloud_data)
    return point_clouds

def read_all_cone_centers(csv_file):
    cone_centers = []
    with open(csv_file, "r") as txt_file:
        for line in txt_file:
            row = line.strip().split()
            x, y = map(float, row[:2])
            frame = int(row[3])
            cone_centers.append([x, y, frame])
    return cone_centers

def sort_cone_centers_by_frame(cone_centers):
    frame_data = defaultdict(list) #Prøv lige med almindelig list

    for x, y, frame in cone_centers:
        frame_data[frame].append((x,y, 0))

    max_frame = max(frame_data.keys())
    grouped_data = [frame_data.get(i, []) for i in range(max_frame + 1)]

    return grouped_data

def calculate_odometry_estimate(source_cloud, target_cloud):
    reg_p2p = o3d.pipelines.registration.registration_icp(
        source_cloud, target_cloud, max_correspondence_distance=0.05,
        estimation_method=o3d.pipelines.registration.TransformationEstimationPointToPoint(),
        criteria=o3d.pipelines.registration.ICPConvergenceCriteria(max_iteration=2000))
    return reg_p2p.transformation


def calculate_icp_for_point_clouds(point_clouds):
    odometry_estimates = []
    for i in range(len(point_clouds) - 1):
        source_cloud = o3d.geometry.PointCloud()
        source_cloud.points = o3d.utility.Vector3dVector(point_clouds[i])

        target_cloud = o3d.geometry.PointCloud()
        target_cloud.points = o3d.utility.Vector3dVector(point_clouds[i + 1])

        odometry_matrix = calculate_odometry_estimate(source_cloud, target_cloud)
        odometry_estimates.append(odometry_matrix)
    return odometry_estimates


def calculate_icp_for_frames(frames):
    odometry_estimates = []
    for i in range(len(frames) -1):
        print("THIS IS THE LENGHT: ", len(frames[i]))
        if len(frames[i]) >= 2:
            source_frame = o3d.geometry.PointCloud()
            source_frame. points = o3d.utility.Vector3dVector(frames[i])
        else:
            continue

        counter = 0
        while i + 1 + counter < len(frames) and len(frames[i + 1 + counter]) < 2:
            print("THIS NUMBER: ", i + 1 + counter)
            counter += 1
        
        target_index = i + 1 + counter
        if target_index >= len(frames):
            break

        target_frame = o3d.geometry.PointCloud()
        target_frame.points = o3d.utility.Vector3dVector(frames[target_index])

        odometry_matrix = calculate_odometry_estimate(source_frame, target_frame)
        odometry_estimates.append(odometry_matrix)

    return odometry_estimates

        #calculate odometry 



def apply_odometry_transformations(starting_position, odometry_estimates):
    positions = [starting_position]
    current_position = starting_position.copy()
    for odometry_matrix in odometry_estimates:
        current_position = np.dot(odometry_matrix, current_position)
        positions.append(current_position)
    return positions

def main():
    # csv_directory = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/point_clouds/"
    # cone_center_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/experiments/cone_centers_airport_valid_lenscanline_timingtest.txt"
    # point_clouds = read_all_point_clouds(csv_directory)
    # print(point_clouds[0])
    # odometry_estimates = calculate_icp_for_point_clouds(point_clouds)
   
    # starting_position = np.eye(4)
    # positions = apply_odometry_transformations(starting_position, odometry_estimates)

    # # Visualize the positions
    # positions = np.array(positions)
    # positions_arr = np.array([], dtype=float)
    # for position in positions:
    #     #print(position)
    #     x, y = map(float, position[:2, 3])
    #     positions_arr = np.append(positions_arr, [x, y])
    # positions_arr = positions_arr.reshape(-1, 2)
    # visualize_point_cloud(positions_arr, title="Odometry Estimates")

    cone_center_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/experiments/cone_centers_airport_valid_lenscanline_timingtest.txt"
    cone_centers = read_all_cone_centers(cone_center_path)
    frames = sort_cone_centers_by_frame(cone_centers)
    odometry_estimates = calculate_icp_for_frames(frames)

    starting_position = np.eye(4)
    positions = apply_odometry_transformations(starting_position, odometry_estimates)

    # Visualize the positions
    positions = np.array(positions)
    positions_arr = np.array([], dtype=float)
    for position in positions:
        #print(position)
        x, y = map(float, position[:2, 3])
        positions_arr = np.append(positions_arr, [x, y])
    positions_arr = positions_arr.reshape(-1, 2)
    visualize_point_cloud(positions_arr, title="Odometry Estimates")
    

if __name__ == "__main__":
    main()