

import rospy
from sensor_msgs.msg import PointCloud2, CameraInfo, Image
from cv_bridge import CvBridge
import sensor_msgs.point_cloud2 as pc2
from message_filters import ApproximateTimeSynchronizer, Subscriber
import tf
import numpy as np
import cv2
import os


bridge = CvBridge()

T = np.array([
    [0.0222886, -0.999716, -0.00838127, 0.017202133],
    [-0.0579, 0.0070785, -0.998297, 0.1632],
    [0.998074, 0.0227359, -0.0577259, 0.137166],
    [0, 0, 0, 1]
    ])

P = np.array([
    [1417.05365482, 0, 943.28929921, 0],
    [0, 1414.17073022, 621.71082445, 0],
    [0, 0, 1, 0]
])
# T = np.array([
#     [0.0473127, -0.998869, -0.00473427, -0.0206732],
#     [-0.080818, 0.000896075, -0.996728, 0.10122],
#     [0.995605, 0.475406, -0.0806842, 0.114573],
#     [0, 0, 0, 1]
#     ])

img_count = 0

def project_point_cloud(img_data, pc_data, cam_info):
    

    pc = pc_data[:, :3]
    pc = np.array(list(pc))

    #Homogenizing points
    pc = np.hstack((pc, np.ones((pc.shape[0], 1))))


    #Projecting pointcloud from LIDAR frame to camera frame
    pc_cam = np.dot(T, pc.T)

    #Projecting LIDAR points to 2D image plane
    points_2d = np.dot(P, pc_cam).T 

    print("POINT BEFORE UNHOMO: ", points_2d.shape)
    #Unhomogenizing 
    points_2d /= points_2d[:, 2].reshape(-1, 1)
    points_2d = points_2d[:, :2]
    #img = bridge.imgmsg_to_cv2(img_data, desired_encoding="bgr8")
    img = img_data

    print("POINT AFTER UNHOME: ", points_2d.shape)

    # for x, y in points_2d[:, :2].astype(int):
    #     if x > 1199 and x < 1920:
    #         print(f"X: {x}     Y: {y}")

    #If you have problems make sure that this is working
    rows, cols, _ = img.shape

    for i in range(10):
        print("POINTS AFTER REMOVING COLUMN: ", points_2d[i])
   # print(f"ROWS: {rows}   COLS: {cols}")
    valid_x = (points_2d[:, 0] >= 0) & (points_2d[:, 0] < cols)
    valid_y  = (points_2d[:, 1] >= 0) & (points_2d[:, 1] < rows)
    valid_points = valid_x & valid_y

    filtered_points = points_2d[valid_points]
    for i in range(10):
        print("FILTERED POINTS: ", filtered_points[i])
    print("SHAPE OF FILTERED POINTS: ", filtered_points.shape)

   # for point in filtered_points:
    #    print(point)
  

    for x, y in filtered_points[:, :2].astype(int):
     #   print(f"X: {x}     Y: {y}")
        cv2.circle(img, (x,y), 2, (0,255,0), -1)

    global img_count
    img_count += 1
    #cv2.imwrite("../images/" + str(img_count) + ".jpg", img)
    print("ONE IMAGE AND SCAN IS COMPLETE")
    cv2.imshow("Projection", img)
    while True: 
        if cv2.waitKey(1) == ord("q"):
            break
            

    

def main():
    for i in range(1100):
        csv_path = "data/my_data/1/point_clouds"
        indx = i
        img = cv2.imread(f"data/my_data/1/images_car/{i}.jpg")
        csv = data = np.genfromtxt(os.path.join(csv_path, str(indx) + ".csv"), delimiter=',')
        #print(csv)

        project_point_cloud(img, csv, P)
        #cv2.imshow("test", img)
        
        # while True:
        #     if cv2.waitKey(1) == ord("q"):
        #         break


if __name__=="__main__":
    main()


