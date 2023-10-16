import json
import numpy as np
import cv2
from tqdm import tqdm
from time import sleep
import os

filename = "bb.json"
img_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/images_drone/"

world_points = np.array([[-4, 11.75], [10, 11.75], [-4, -7.25], [10, -7.25], [4, 0.75]])

def draw_points(image, points, color=(0, 255, 0), radius=8):
    print("SHAPE OF POINTS: ", points.shape) 
    points_car = points[0]
    points = points[1:6]
    for point in points:
        cv2.circle(image, tuple(np.round(point).astype(int)), radius, color, thickness=-1)

    cv2.circle(image, tuple(np.round(points_car).astype(int)), radius, (255, 0, 0), thickness=-1)
    return image

def show_points(all_image_points, car_points_world):
    
    frame_idx = 1
    scale_factor = 0.5

    while True:
        image_filename = os.path.join(img_path, f"frame{frame_idx:04d}.png")
        frame = cv2.imread(image_filename)
        

        if frame is None:
            print(f"No image found at {image_filename}, ending.")
            break
        
        if frame_idx >= len(all_image_points):
            print("End of points list.")
            break



        frame = cv2.resize(frame, (int(frame.shape[1]*scale_factor), int(frame.shape[0]*scale_factor)))
        points = (np.array(all_image_points[frame_idx - 1]) * scale_factor).astype(int)
        frame_with_points = draw_points(frame.copy(), points)
        
        cv2.imshow("Frame with Points", frame_with_points)
        
        key = cv2.waitKey(0) & 0xFF
        if key == 13:  
            frame_idx += 1  
        elif key == 27: 
            break  

    cv2.destroyAllWindows()

def main():


    bb_car = []
    bb_top_left = []
    bb_top_right = []
    bb_center = []
    bb_bot_left = []
    bb_bot_right = []
    try:
        with open(filename, "r") as file:
            data = json.load(file)
            for item in data:
                bb_car.append(item["Car"])
                bb_top_left.append(item["Tag_top_left"])
                bb_top_right.append(item["Tag_top_right"])
                bb_center.append(item["Tag_center"])
                bb_bot_left.append(item["Tag_bot_left"])
                bb_bot_right.append(item["Tag_bot_right"])
            print("Data loaded successfully:")

    except FileNotFoundError:
        print(f"No such file or directory: {filename}")


    car_points = []
    top_left_points = []
    top_right_points = []
    bot_left_points = []
    bot_right_points = []
    center_points = []

    image_points = []
    all_image_points = []
    for i in range(len(bb_car)):
        car_x = bb_car[i][0] + bb_car[i][2]/2
        car_y = bb_car[i][1] + bb_car[i][3]/2
        
        top_left_x = bb_top_left[i][0] + bb_top_left[i][2]
        top_left_y = bb_top_left[i][1] 

        top_right_x = bb_top_right[i][0] + bb_top_right[i][2]
        top_right_y = bb_top_right[i][1] + bb_top_right[i][3]

        center_x = bb_center[i][0] + bb_center[i][2]
        center_y = bb_center[i][1] + bb_center[i][3]

        bot_left_x = bb_bot_left[i][0]
        bot_left_y = bb_bot_left[i][1]

        bot_right_x  = bb_bot_right[i][0]
        bot_right_y = bb_bot_right[i][1] + bb_bot_right[i][3]

        car_points.append([car_x, car_y])
        top_left_points.append([top_left_x, top_left_y])
        top_right_points.append([top_right_x, top_right_y])
        bot_left_points.append([bot_left_x, bot_left_y])
        bot_right_points.append([bot_right_x, bot_right_y])
        center_points.append([center_x, center_y])

        image_points.append([[top_left_x, top_left_y], [top_right_x, top_right_y], [bot_left_x, bot_left_y], [bot_right_x, bot_right_y], [center_x, center_y]])
        all_image_points.append([[car_x, car_y],[top_left_x, top_left_y], [top_right_x, top_right_y], [bot_left_x, bot_left_y], [bot_right_x, bot_right_y], [center_x, center_y]])
    

    image_points = np.array(image_points)

    homograpy = []

    
    for points in tqdm(image_points, desc = "processing"):
        points = np.array(points)
        H, _ = cv2.findHomography(points, world_points, method=cv2.RANSAC)
        homograpy.append(H)

    
    car_points_world = []

    for i in range(len(homograpy)):
        car_world = cv2.perspectiveTransform(np.array(car_points[i]).reshape(1, 1, 2).astype(float), homograpy[i])
        car_points_world.append(car_world)





    show_points(all_image_points, car_points_world)
    data = {"points": [{"x": float(point[0][0][0]), "y": float(point[0][0][1])} for point in car_points_world]}

    with open("gt_path.json", "w") as f:
        json.dump(data, f)


if __name__ == "__main__":
    main()