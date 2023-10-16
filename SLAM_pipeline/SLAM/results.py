import numpy as np
import matplotlib.pyplot as plt
import math
from scipy.optimize import linear_sum_assignment
from scipy.spatial.distance import euclidean
import json
#**************************************GT DATA**************************************************
yellow_cones = [
     (-3, 1.5), (-3, 3), (-3.75, 4),
    (-4.5, 5), (-5.25, 6), (-5.25, 7.5), (-4.5, 8.5),
    (-3, 8.5), (-1.5, 8.5), (0, 8.5), (1.5, 8.5),
    (2.75, 7.5), (3, 6), (3, 4.5), (3, 3),
    (3, 1.5), (3, 0), (3, -1.5), (3, -3),
    (3, -4.5), (2, -5.5), (0.5, -5.5), (-1, -5.5),
    (-2.5, -5.5), (-3, -4.5), (-3, -3)
]

blue_cones = [
    (-5, 1.5), (-5, 3), (-5.75, 4),
    (-6.5, 5), (-7.25, 6), (-7.25, 7.5), (-6.5, 8.75),
    (-5.75, 9.75), (-4.5, 10.5), (-3, 10.5), (-1.5, 10.5),
    (0, 10.5), (1.5, 10.5), (3, 10.5), (4, 9.5),
    (4.75, 8.5), (5, 7.25), (5, 6), (5, 4.5),
    (5, 3), (5, 1.5), (5, 0), (5, -1.5),
    (5, -3), (5, -4.5), (4.5, -6), (3.5, -7),
    (2, -7.5), (0.5, -7.5), (-1, -7.5), (-2.5, -7.5),
    (-4, -7), (-5, -6), (-5, -4.5), (-5, -3)
]

red_cones = [(-3, 0), (-5, 0)]
purple_cones = [(-5, -1.5), (-3, -1.5)]

yellow_cones= [(x+4, y+1, 3) for x, y in yellow_cones]
blue_cones = [(x+4, y+1, 0) for x, y in blue_cones]
red_cones = [(x+4, y+1, 1) for x, y in red_cones]
purple_cones = [(x+4, y+1, 2) for x, y in purple_cones]

all_cones = blue_cones + red_cones + purple_cones + yellow_cones
#****************************************************************************************************


#Cone numbering system:
# Blue          : 0      
# Large orange  : 1
# Small orange  : 2
# Yellow        : 3

#How many cones:
# Blue = 35
# Largo orange: 2
# small orange: 2
# yellow = 26

result_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/final_test/"
#result_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/old_data/final_test/"
colors = ["blue", "red", "purple", (0.8, 0.6, 0.2)]


def show_landmarks():

    x_coords = []
    y_coords = []
    point_colors = []

    with open(result_path + "landmarks.txt", "r") as file:
        for line in file:
            x, y, color_index = line.split()

            x = float(x)
            y = float(y)
            color_index = int(color_index)
            
            x_coords.append(x)
            y_coords.append(y)
            point_colors.append(colors[color_index])


    plt.scatter(x_coords, y_coords, c=point_colors, marker="x")

    plt.xlabel("X [m]")
    plt.ylabel("Y [m]")
    plt.title("")
    plt.grid(True)

    plt.show()


def show_path():


    R = np.array([[0, 1],[-1, 0]])
    x_coords = []
    y_coords = []
    angles = []

    with open(result_path + "path.txt", "r") as file:
        for line in file:
            x, y, angle = line.split()

            x = float(x)
            y = float(y)
            angle = float(angle)
            
            x_coords.append(x)
            y_coords.append(y)
            angles.append(angle)
    points = [x_coords, y_coords]
    #points = R @ points

    x_coords = points[0]
    y_coords = points[1]

    data = {"points": [{"x": x, "y": y}for x, y in zip(x_coords, y_coords)]}

    with open(result_path + "est_path.json", "w") as f:
        json.dump(data,f)

    plt.scatter(x_coords, y_coords, c="black", marker="o")

    plt.xlabel("X")
    plt.ylabel("Y")
    plt.title("Scatter Plot of Points from Text File")
    plt.grid(True)
    plt.show()




def show_landmarks_vs_gt():

    R = np.array([[0, 1],[-1, 0]])
    x_coords = []
    y_coords = []
    point_colors = []

    with open(result_path + "landmarks.txt", "r") as file:
        for line in file:
            x, y, color_index = line.split()

            x = float(x)
            y = float(y)
            color_index = int(color_index)
            
            x_coords.append(x)
            y_coords.append(y)
            point_colors.append(colors[color_index])

    points = [x_coords, y_coords]
    #points = R @ points
    x_coords = points[0]
    y_coords = points[1]

    x_blue, y_blue, _ = zip(*blue_cones)
    x_red, y_red, _ = zip(*red_cones)
    x_purple, y_purple, _ = zip(*purple_cones)
    x_yellow, y_yellow, _ = zip(*yellow_cones)

    plt.scatter(x_blue, y_blue, marker="o", edgecolors="blue", facecolors="none", s=65, linewidths=1.5)
    plt.scatter(x_red, y_red, marker="o", edgecolors="red", facecolors="none", s=65, linewidths=1.5)
    plt.scatter(x_purple, y_purple, marker="o", edgecolors="purple", facecolors="none", s=65, linewidths=1.5)
    plt.scatter(x_yellow, y_yellow, marker="o", edgecolors=(0.8, 0.6, 0.2), facecolors="none", s=65, linewidths=1.5)

    plt.scatter(x_coords, y_coords, c=point_colors, marker="x")
    plt.xlabel("X [m]")
    plt.ylabel("Y [m]")
    plt.title("")
    plt.grid(True)
    plt.savefig(result_path + "map.png")
    plt.show()
    


def load_estimated_landmarks(path):

    lm = []

    R = np.array([[0, 1],[-1, 0]])

    with open(result_path + "landmarks.txt", "r") as file:
        for line in file:
            x, y, color_index = line.split()

            x = float(x)
            y = float(y)
            point = [x, y]
            #point = R @ point
            x = point[0]
            y = point[1]
            color_index = int(color_index)
            
            lm.append([x, y, color_index])
         
    return lm


def calc_rmse(gt_lm, est_lm):
    
    num_gt_cones = len(gt_lm)
    num_estimated_cones = len(est_lm)
    cost_matrix = np.zeros((num_gt_cones, num_estimated_cones))

    for i, gt_cone in enumerate(gt_lm):
        for j, estimated_cone in enumerate(est_lm):
            cost_matrix[i, j] = euclidean(gt_cone[:2], estimated_cone[:2])

    # Find the optimal assignment that minimizes the total distance
    row_ind, col_ind = linear_sum_assignment(cost_matrix)
    total_distance = cost_matrix[row_ind, col_ind].sum()
    rmse = np.sqrt(np.mean(cost_matrix[row_ind, col_ind] ** 2))

    # Calculate RMSE
    rmse = np.sqrt(np.mean(cost_matrix[row_ind, col_ind] ** 2))

    return rmse

def calc_estimation_disrepency(est_lm):
   
    num_blue = 0
    num_red = 0
    num_purp = 0
    num_yellow = 0

    for lm in est_lm:
        if lm[2] == 0:
            num_blue +=1
        if lm[2] == 1:
            num_red +=1
        if lm[2] == 2:
            num_purp +=1
        if lm[2] == 3:
            num_yellow +=1

    disc_blue = num_blue - len(blue_cones)
    disc_red = num_red - len(red_cones)
    disc_purp = num_purp - len(purple_cones)
    disc_yellow = num_yellow - len(yellow_cones)

    return disc_blue, disc_red, disc_purp, disc_yellow

def show_map_and_path():
 
    
    x_coords = []
    y_coords = []
    point_colors = []

    with open(result_path + "landmarks.txt", "r") as file:
        for line in file:
            x, y, color_index = line.split()

            x = float(x)
            y = float(y)
            color_index = int(color_index)
            
            x_coords.append(x)
            y_coords.append(y)
            point_colors.append(colors[color_index])


    plt.scatter(x_coords, y_coords, c=point_colors, marker="x")

    plt.xlabel("X [m]")
    plt.ylabel("Y [m]")
    plt.title("")
    plt.grid(True)

    R = np.array([[0, 1],[-1, 0]])
    x_coords = []
    y_coords = []
    angles = []

    with open(result_path + "path.txt", "r") as file:
        for line in file:
            x, y, angle = line.split()

            x = float(x)
            y = float(y)
            angle = float(angle)
            
            x_coords.append(x)
            y_coords.append(y)
            angles.append(angle)
    points = [x_coords, y_coords]
    #points = R @ points

    x_coords = points[0]
    y_coords = points[1]

    data = {"points": [{"x": x, "y": y}for x, y in zip(x_coords, y_coords)]}

    with open("est_path.json", "w") as f:
        json.dump(data,f)

    plt.plot(x_coords, y_coords, c="black", linewidth=3)


    gt_path_file_name = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/DataPostProcessing/gt_path.json"
    with open(gt_path_file_name, "r") as file:
        data = json.load(file)

    x_gt = []
    y_gt = []
    for p in data["points"]:
        x_gt.append(p["x"])
        y_gt.append(p["y"])

    plt.plot(x_gt, y_gt, c="green", linewidth=3)

    plt.savefig(result_path + "map_and_path.png")



    plt.show()

def main():
    #show_landmarks()

    show_landmarks_vs_gt()
    show_path()
    estimated_landmarks = load_estimated_landmarks(f"{result_path}landmark.txt")
    #rmse, unmatched_landmarks = find_closest_landmarks_and_rmse(estimated_landmarks, all_cones)
    rmse = calc_rmse(all_cones, estimated_landmarks)
    disc_blue, disc_red, disc_purp, disc_yellow = calc_estimation_disrepency(estimated_landmarks)
    print("RMSE: ", rmse)
    #show_path()
    show_map_and_path()
    
    with open(result_path + "evaluation.txt", "a") as f:
                f.write(f"RMSE {rmse} \n")
                f.write(f"Number of cones estimated - GT cones: \n")
                f.write(f"BLUE: {disc_blue} \n")
                f.write(f"RED: {disc_red} \n")
                f.write(f"PURP: {disc_purp} \n")
                f.write(f"YELLOW: {disc_yellow} \n")
    
    
if __name__ == "__main__":
    main()
