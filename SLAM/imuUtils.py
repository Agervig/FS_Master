#Husk at tage højde for transformation mellem IMU og cam


import numpy as np
from scipy.spatial.transform import Rotation as R

def quaternion_to_yaw(quaternion):

    r = R.from_quat(quaternion)
    _, _, yaw = r.as_euler('xyz', degrees=False)
    return yaw

def integrate(data, delta_time):
    return np.trapz(data, dx=delta_time)


def estimate_motion_from_imu(accelerations, quaternions, delta_time=0.01):    

    velocities = [[0, 0]]
    displacements = [[0, 0]]
    yaws = []



    for i in range(1, len(accelerations)):
        vx = velocities[-1][0] + integrate([accelerations[i-1][0], accelerations[i][0]], delta_time)
        vy = velocities[-1][1] + integrate([accelerations[i-1][1], accelerations[i][1]], delta_time)
        velocities.append([vx, vy])
        
        dx = displacements[-1][0] + integrate([velocities[i-1][0], velocities[i][0]], delta_time)
        dy = displacements[-1][1] + integrate([velocities[i-1][1], velocities[i][1]], delta_time)
        displacements.append([dx, dy])


        yaws.append(quaternion_to_yaw(quaternions[i]))

    x = displacements[-1][0]
    y = displacements[-1][1]
    yaw = np.mean(yaws)

    return [x, y, yaw]
