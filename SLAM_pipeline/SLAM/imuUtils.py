import numpy as np
import os
import pandas as pd
from scipy.spatial.transform import Rotation
from scipy.integrate import cumtrapz
import matplotlib.pyplot as plt
from tqdm import tqdm
from time import sleep


def calculate_displacement(acc, delta_time):


    if len(acc) != len(delta_time):
        raise ValueError("Acceleration and delta time lists must be the same length")
    
    velocities = [0]
    displacements = []
    
    for i, a in enumerate(acc):
        new_vel = velocities[-1] + a * delta_time[i]
        #print(f"FRAME NUMBER: {i}     Acceleration: {a:.8f}     Delta time: {delta_time[i]:.8f}       Last vel: {velocities[-1]:.6f}           new vel: {new_vel:.6f}")
       # sleep(0.1)
        velocities.append(new_vel) 

    del velocities[0]

    for i in range(1, len(velocities)):
        disp = ((velocities[i-1] + velocities[i]) / 2) * delta_time[i]
        displacements.append(disp)

    return displacements


    
def merge_data(path):
   
    accelerations_x, accelerations_y = [], []
    quaternions_x, quaternions_y, quaternions_z, quaternions_w = [],[],[],[]
    timestamp = []

    for file in tqdm(sorted(os.listdir(path), key=lambda x: int(x[:-4]))):
        index = file[:-4]

        if int(index) < 694:
           continue
        if int(index) == 820:
            break
        data = pd.read_csv(f"{path}{index}.csv")

        #quaternions
        quat_x = np.array(data["orientation_x"])
        quat_y = np.array(data["orientation_y"])
        quat_z  = np.array(data["orientation_z"])
        quat_w = np.array(data["orientation_w"])

        #acceleration
        acc_x = data["linear_acceleration_x"]
        acc_y = data["linear_acceleration_y"]

        time = np.array(data["timestamp"])
        
        for i in range(len(acc_x)):
            accelerations_x.append(acc_x[i])
            accelerations_y.append(acc_y[i])
            quaternions_x.append(quat_x[i])
            quaternions_y.append(quat_y[i])
            quaternions_z.append(quat_z[i])
            quaternions_w.append(quat_w[i])
            timestamp.append(time[i])


    return accelerations_x, accelerations_y, quaternions_x, quaternions_y, quaternions_z, quaternions_w, timestamp


def gravity_compensate(acceleration, quat_x, quat_y, quat_z, quat_w):

    for i in range(len(acceleration)):
        
        quaternion = [quat_x[i], quat_y[i], quat_z[i], quat_w[i]]

        R = Rotation.from_quat(quaternion).as_matrix()
        
        g_IMU = np.dot(R, [0, 0, -9.815])
        
        acceleration[i] = acceleration[i] - g_IMU[0]
    
    return acceleration



def main():

    imu_data_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/imu_data/"

    acc_x, acc_y, quat_x, quat_y, quat_z, quat_w, timestamp = merge_data(imu_data_path)
    timestamp = np.asarray(timestamp)
    time_delta = np.diff(timestamp)
    time_delta = time_delta.tolist()
    time_delta.insert(0,0)


    for i in range(len(acc_x)):
        print(f"FRAME: {i/10}      GRAVITY X: {acc_x[i]:.8f}      GRAVITY Y: {acc_y[i]:.8f}")
        #sleep(0.1)

    acc_x = gravity_compensate(acc_x, quat_x, quat_y, quat_z, quat_w)
    acc_y = gravity_compensate(acc_y, quat_x, quat_y, quat_z, quat_w)

    for i in range(len(acc_x)):
        print(f"FRAME: {i}      GRAVITY X: {acc_x[i]:.8f}      GRAVITY Y: {acc_y[i]:.8f}")
        #sleep(0.1)

    displacement = calculate_displacement(acc_x, time_delta)
    displacement_y = calculate_displacement(acc_y, time_delta)
    print(np.sum(displacement))
    print(np.sum(displacement_y))
    # plt.plot(acc_x)

    # # Label the axes
    # plt.ylabel('Value')
    # plt.xlabel('Index')

    # # Title of the plot
    # plt.title('Plotting a List of Numbers')

    # # Display the plot
    # plt.show()


if __name__=="__main__":
    main()




