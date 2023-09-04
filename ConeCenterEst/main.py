import os
import open3d as o3d
import cv2
import numpy as np
from numpy import genfromtxt
import math
import time

from measurement import *

from matplotlib import pyplot as plt




def get_cone_centers():
    reference_pt = np.array([-0.919675, 9.72914, 0.17058])
    reference_angle = math.atan2(reference_pt[1],reference_pt[0]) - math.pi/2
    #0: background, 1: blue-cone, 2: end-cone, 3: start-cone, 4: yellow-cone

    ground_truth = np.arange(1, 10, 0.2)

    csv_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/final_test/csv_airport"
    


    #for file in sorted(os.listdir(csv_path)): #Old sort without key cant sort numerical data correct (THOMAS)
    for file in sorted(os.listdir(csv_path), key=lambda x: int(x[:-4])):
        start = time.time()
        indx = file[:-4]
        print("HER: ", indx)

        measurement = Measurement(indx)
        measurement.projectLidarToImage()
        measurement.calculateCenterOfCones()
        #measurement.showImage()
        # pt_ar = measurement.getPCDFromCSV()
        # pt_ar = measurement.sortPoints(pt_ar)
        # pcd = o3d.geometry.PointCloud()
        # pcd.points = o3d.utility.Vector3dVector(pt_ar)
        # measurement.show_3d_warped_2d(pcd.points)
        centers = measurement.data3D.center_cones
        print(indx)
        print(centers)
        f = open("/home/agervig/git/FSM/MSc_Fstudent_SLAM/ConeCenterEst/experiments/cone_centers_airport_valid_lenscanline_timingtest.txt", "a")        #Contain x, y of cone center, label and a index dived by 4 for some reason (x,y,label, idx/4)

        for cones in centers:
            f.write(str(cones[0]) + " " + str(cones[1]) + " " + str(cones[2]) + " " + str(int(indx)) + "\n")
        #    f.write(str(cones[0]) + " " + str(cones[1]) + " " + str(cones[2]) + " " + str(int(indx) / 1) + "\n")

        end = time.time()
        t = open("/home/agervig/git/FSM/MSc_Fstudent_SLAM/ConeCenterEst/experiments/sync_timing.txt", "a")
        t.write(str(end-start) + " " + str(len(centers)) + "\n")

def main():
    csv_path = "../data/csv"
    get_cone_centers()

if __name__ == '__main__':
    main()

