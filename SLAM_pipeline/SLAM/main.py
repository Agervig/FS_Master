import os
import numpy as np
import open3d as o3d
import math
import copy
import time
import json

from skimage import io, transform
from fs_utils import *
from Particle import *
import matplotlib.pyplot as plt
import fs_utils
import matplotlib.axis as axis
from tqdm import tqdm

#Cone numbering system:
# Blue          : 0
# Large orange  : 1
# Small orange  : 2
# Yellow        : 3

#
#18 gule (3) er observerat
#41 blå (0)

NO_PARTICLES = 200
result_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/final_test/no_odometry"
#result_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/old_data/final_test/"
uncertainty_x = [1e-3, 1e-2, 1e-1, 1e+1, 1e+2, 1e+3]
uncertainty_theta = [1e-3, 1e-2, 1e-1, 1e+1, 1e+2, 1e+3]

csv_folder = "data/csv"
gt_path = "data/gt.txt"

# Path to a folder that can be used to save all the data if show_animation and save_animation are set to True
vis_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/experiments/path/"



# Downsample the frames
def downsample(cones, factor):
    new_arr = []
    for centers in cones:
        if int(centers[0,3] + 1) % factor != 0:
            continue
        inner_array = []
        for line in centers:
            inner_array.append([line[0], line[1], line[2], (line[3] + 1)/factor])
        new_arr.append(np.asarray(inner_array))
    return new_arr

# Rearrange the frames so that the cone centers are sorted by frame index                                                         (probably formatted x, y, label, frame_index)
                                                                                                                                                                                        #This function is designed to sort a 2D numpy array of cone centers based on the values in the fourth column. 
def fix_cone_centers(path):
    data = open(path)
    data_array = []
    for line in data:
        elements = line.split()

        fixed_elements = []
        for element in elements:
            fixed_elements.append(float(element))
        data_array.append(fixed_elements)

    data_array = np.asarray(data_array)
    data_array = data_array[data_array[:, 3].argsort()]
    return data_array


# Array with cones per frame
def sort_by_frames(cones):
    frames = []  # Array where a single element is an array of cone centers
    for i in range(int(np.amax(cones[:, 3]))):
        frame_cones = cones[cones[:, 3] == i]
        frames.append(frame_cones)

    return frames


# Input: Array of frames where each frame has cone_centers / length: N (number of frames)
# Output: Array of correspondences where each element is a list of cone centers, both for frame t and t+1 / Length N-1
def preprocess_odometry_est(frames):
    correspondences = []
    dist_threshold = 0.5
    for i in range(len(frames) - 1):
        corr1 = []
        corr2 = []
        for center1 in frames[i]:
            for center2 in frames[i+1]:
                dist = math.sqrt((center1[0] - center2[0]) ** 2 + (center1[1] - center2[1]) ** 2)
                if dist < dist_threshold:
                    corr1.append(center1[:2])
                    corr2.append(center2[:2])
        
        correspondences.append([corr1, corr2])

    correspondences = np.asarray(correspondences)
    return correspondences


def get_odometry(correspondences):
    transformations = []
    #prev_transform = None

    #added thomas:
    prev_transform = np.identity(3)

    for i in range(len(correspondences)):
        current_frame = np.array(correspondences[i, 0])
        next_frame = np.array(correspondences[i, 1])

        if len(next_frame) == 0 or len(current_frame) == 0:
            transformations.append(prev_transform)
            continue 

        tform = transform.estimate_transform('euclidean', next_frame, current_frame)
        params = tform.params
        if np.isnan(params[0, 0]):
            transformations.append(prev_transform)
            continue
        prev_transform = params
        transformations.append(params)
    return transformations


def extract_cone_color(arr):
    colors = []
    for el in arr:
        if el == 0:
            colors.append("blue")
        elif el == 1:
            colors.append("red")
        elif el == 2:
            colors.append("purple")
        elif el == 3:
            colors.append("orange")
        else:
            colors.append("black")
    return colors


def get_gt(path):
    f = open(path, 'r')
    data_array = []
    for line in f:
        elements = line.split()
        fixed_elements = []
        for element in elements:
            fixed_elements.append(float(element))
        data_array.append(np.array(fixed_elements))

    data_array = np.asarray(data_array)
    return data_array


def shuffle_observations(z):
    np.random.shuffle(z)
    return z

def calc_RMSE(gt, obs):
    mse_array = []
    for obs_pt in obs:
        min_dist2 = 5000
        for gt_pt in gt:
            # If they dont have the same class, continue
            if gt_pt[2] != obs_pt[2]:
                continue
            current_dist2 = (obs_pt[0] - gt_pt[0]) ** 2 + (obs_pt[0] - gt_pt[0]) ** 2
            if current_dist2 < min_dist2:
                min_dist2 = current_dist2
        mse_array.append(min_dist2)
    mse = math.sqrt(np.sum(np.asarray(mse_array)) / len(obs))

    return mse


def load_odometry(path):

    with open(path, "r") as file:
        data = json.load(file)

    transformations = {key: np.array(value) for key, value in data.items()}
    transformations = list(transformations.values())
    return transformations




def main():

    csv_folder = "data/csv"
    #gt_path = "data/gt_airport_fixed_final.txt"
    #gt = get_gt(gt_path)

    #**********************************************************************JANUS AND STEFAN ODOMETRY**************************************
    # odometry_data = "data/cone_centers_airport_filtered.txt"                                                                                            #path to GT cone centers. 
    # cone_centers_odometry = fix_cone_centers(odometry_data)                                                                                              #Sorted GT cone centers in numpy array (sorted based on fourth column)
    # frames_odometry = sort_by_frames(cone_centers_odometry)   # List of the frames, where each frame is array of all the cone centers
    # correspondences = preprocess_odometry_est(frames_odometry) # Array of correspondences. (center of cones in frame t and t+1)
    # odometry = get_odometry(correspondences)
    #*************************************************************************************************************************************


    # data_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/experiments/cone_centers_airport_valid_lenscanline_timingtest.txt"
    # cone_centers = fix_cone_centers(data_path)  #Loads the conecenter estimates into a numpy array
    # #print(len(cone_centers))
    # frames = sort_by_frames(cone_centers)   # List of the frames, where each frame is array of all the cone centers in that frame
    # correspondences = preprocess_odometry_est(frames)               #DET HER HAR JEG TILFØJET
    # odometry = get_odometry(correspondences)                    # DET HER HAR JEG TILFØJET husk at udkommentere de rigtige linjer ovenfor
    # cumulative_transform = []
    # current_transform = np.identity(3)
    # i = 0

    # print("HERE IS THE FIRST ODOMETRY: ", type(odometry[0]))
    #matrix = [[0,1,0], [-1,0,0.0],[0,0,1]]
    #matrix = np.asarray(matrix)
    #matrix2 = [[1,0,0], [0,1,0.05],[0,0,1]]
    #matrix2 = np.asarray(matrix2)
    #odometry = [matrix2 for _ in range(250)] + [matrix for _ in range(1)] + [matrix2 for _ in range(200)]

    T = [[1, 0, 0],[0, 1, 0], [0, 0, 1]]
    T = np.asarray(T)
    # print("HERE IS ONE AFTER: ", type(odometry[0]))

    odometry_data = "/home/agervig/matlab/Docs/transformations_dataset2.json"
    odometry = load_odometry(odometry_data)

    #for t in odometry:
    #    print(t, "\n\n")
    #    time.sleep(1)

    data_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/final_test/cone_centers_airport_valid_lenscanline_timingtest_dataset1_new.txt"
    #data_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/old_data/final_test/cone_centers_airport_valid_lenscanline_timingtest.txt"
    cone_centers = fix_cone_centers(data_path)
    frames = sort_by_frames(cone_centers)


    odometry = [T for _ in range(763)]
    cumulative_transform = []
    current_transform = np.identity(3)



    error_pos = 0.00011152795102784602
    error_angle = 2.153691467187411   

    #new_error_pos = error_pos
    #new_error_angle = error_angle * 1e-8

    new_error_pos = 0.057
    new_error_angle = 0.006
            
    cov = np.array([new_error_pos, 0, 0, new_error_angle]) 

    cov = cov.reshape(2,2)
    fs_utils.P_cov = cov
    for transform in odometry:
        #current_transform = np.dot(R, current_transform)
        #cumulative_transform.append(current_transform)
        #current_transform = current_transform @ transform
    
        #cumulative_transform.append(transform)
        cumulative_transform.append(current_transform)
        current_transform = current_transform @ transform
    # plt.plot(current_transform[0, 2], current_transform[1, 2], ".k", color="green")
    # plt.gcf().canvas.mpl_connect(
    #         'key_release_event',
    #         lambda event: [exit(0) if event.key == 'escape' else None])
    # plt.pause(0.05)

    #return 

    # Initialize the algorithm (FRAME 0)
    particles = [Particle() for _ in range(NO_PARTICLES)]
    z = frame_to_rb(frames[0])
    update_with_observation(z, particles)

    for i in tqdm(range(1, len(frames)), desc="Processing"):
        time_start = time.time()
    
        current_odometry = odometry[i-1]
        #print("frame:", str(i))

        # Step 1. Sample a new pose for all the particle_indices
        sample_particles(particles, current_odometry)

        # Step 2. Get the observation and update/add landmarks
        z = frame_to_rb(frames[i])
        z = shuffle_observations(z)
        update_with_observation(z, particles)
        best_particle = particles[np.argsort(np.array([particle.w for particle in particles]))[-1]]

        # Step 3. Resampling
        resampling(particles)
        time_end = time.time()
        total_time = time_end - time_start

        # Animation
        save_animation = False
        show_animation = False
        if show_animation:  # pragma: no cover
            plt.cla()
            # for stopping simulation with the esc key.
            plt.gcf().canvas.mpl_connect(
                'key_release_event',
                lambda event: [exit(0) if event.key == 'escape' else None])
            
            for transformation in best_particle.transformations:
                plt.plot(transformation[0, 2], transformation[1, 2], ".k")
        
            if i < len(cumulative_transform):
        
                current_odometry_est = cumulative_transform[i]
                plt.plot(current_odometry_est[0, 2], current_odometry_est[1, 2], ".k", color="green")

                #gt_color_array = extract_cone_color(gt[:,2])
                #plt.scatter(gt[:,0], gt[:, 1], marker="o",color=gt_color_array, facecolor="none")

            # print("current_odometry[0,1]:", current_odometry[0,1])
            # print("current_odometry[0,0]:", current_odometry[0,0])
            # sign = math.atan2(-math.asin(current_odometry[0,1]), math.acos(current_odometry[0,0]))
            # angle = math.acos(current_odometry[0, 0])
            # if sign < 0:
            #    angle *= -1
                if cumulative_transform[i-1][0,1] >= 1 or cumulative_transform[i-1][0,1] <= -1 or cumulative_transform[i-1][0,0] >= 1 or cumulative_transform[i-1][0,0] <= -1:
                    continue
                transform_sign = math.atan2(-math.asin(cumulative_transform[i-1][0,1]), math.acos(cumulative_transform[i-1][0,0]))
                cumulative_angle = math.acos(cumulative_transform[i-1][0, 0])
                if transform_sign < 0:
                    cumulative_angle *= -1

                plt.title( str(len(particles)) + " particles  - Frame: " + str(i))

                x = [lm.x for lm in best_particle.lm[:]]
                y = [lm.y for lm in best_particle.lm[:]]
                color_index_array = [np.argmax(lm.colorcount) for lm in best_particle.lm[:]]

                color_array = extract_cone_color(color_index_array)
            
                for particle in particles:
                    plt.plot(particle.x, particle.y, ".r")

                plt.scatter(x, y,marker="x", color=color_array)
                plt.axis("equal")
                plt.grid(True)
            
                if save_animation:
                    plt.savefig(vis_path + str(i) + '.png')


                plt.pause(0.005)
    

        #Save the results in the final loop
        # if i == len(frames) -1:

        #     with open(result_path + str(counter) + "/README.txt", "a") as f:
        #         f.write(f"Num particles: {NO_PARTICLES} \n")
        #         f.write(f"Uncertainty position: {ux} \n")
        #         f.write(f"Uncertainty angle: {ut} \n")
        #     best_lm = []
        #     with open(result_path + str(counter) + "/landmarks.txt", "a") as f:
        #         for lm in best_particle.lm:
        #             best_lm.append([lm.x, lm.y, int(np.argmax(lm.colorcount))])
        #             f.write(f"{lm.x} {lm.y} {int(np.argmax(lm.colorcount))} \n")

        #     with open(result_path + str(counter) + "/path.txt", "a") as f:
        #         for transform in best_particle.transformations:
        #             angle = math.atan2(transform[1,0], transform[0, 0])
        #             f.write(f"{transform[0,2]} {transform[1, 2]} {angle} \n")
        if i == len(frames) -1:

            with open(result_path + "/README.txt", "a") as f:
                f.write(f"Num particles: {NO_PARTICLES} \n")
                f.write(f"cov_pos: {new_error_angle} \n")
                f.write(f"cov_angle: {new_error_pos}")

            best_lm = []
            with open(result_path  + "/landmarks.txt", "a") as f:
                for lm in best_particle.lm:
                    best_lm.append([lm.x, lm.y, int(np.argmax(lm.colorcount))])
                    f.write(f"{lm.x} {lm.y} {int(np.argmax(lm.colorcount))} \n")

            with open(result_path  + "/path.txt", "a") as f:
                for transform in best_particle.transformations:
                    angle = math.atan2(transform[1,0], transform[0, 0])
                    f.write(f"{transform[0,2]} {transform[1, 2]} {angle} \n")    
        

        # Saves various information, e.g. landmark locations and classification, paths, RMSE etc...
        if save_animation:
            best_lm_array = []
            for lm in best_particle.lm:
                best_lm_array.append([lm.x, lm.y, int(np.argmax(lm.colorcount))])

            # Write the rmse error in a file along with the frame index
            # with open(vis_path + "results.txt", "a") as rmsefile:
            #     rmsefile.write(str(i) + " " + str(calc_RMSE(gt, best_lm_array)) + "\n")

            # This is the frame where the vehicle has driven the whole track
            # Write the lm observations of the best particles into a text file
            with open(vis_path + "times.txt", "a") as timefile:
                timefile.write(str(total_time) + " " + str(len(best_particle.lm)) + " " + str(i) + " " + str(len(particles)) + "\n")

            # After a whole track, can be changed to another fram value if needed
            if i == 1111:
                # Write the 
                with open(vis_path + "observations.txt", "a") as obsfile:
                    for lm in best_lm_array:
                        obsfile.write(str(lm[0]) + " " + str(lm[1]) + " " + str(lm[2]) + " " + " " + str(i) + "\n")

                with open(vis_path + "path.txt", "a") as pathfile:
                    for best_tform in best_particle.transformations: 
                        sign = math.atan2(-math.asin(best_tform[0,1]), math.acos(best_tform[0,0]))
                        angle = math.acos(best_tform[0, 0])
                        if sign < 0:
                            angle *= -1    
                        pathfile.write(str(best_tform[0,2]) + " " + str(best_tform[1,2]) + " " + str(angle) + "\n")

                with open(vis_path + "lm_classification.txt", "a") as classfile:
                    for b, lm in enumerate(best_particle.lm):
                        print(len(lm.classification_arr))
                        for obs_ind, lm_obs in enumerate(lm.classification_arr):
                            classfile.write(str(lm_obs[0]) + " " + str(lm_obs[1]) + " " + str(b) + " " + str(obs_ind) + "\n")


if __name__ == '__main__':
    main()
