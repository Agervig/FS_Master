import numpy as np
import cv2

import cv2
import os
def apply_colormap(image):

    colormap = {
        0: [0, 0, 0],       # black
        1: [255, 0, 0],     # blue
        2: [0, 0, 255],     # red
        3: [128, 0, 128],   # purple
        4: [0, 255, 255]    # yellow
    }
    

    colored_image = np.zeros((image.shape[0], image.shape[1], 3), dtype=np.uint8)

    for i, color in colormap.items():
        colored_image[image == i] = color
    
    return colored_image

def display_images(directory_path, num_images, delay=30):
    for i in range(num_images):
        image_path = os.path.join(directory_path, f"{i}.jpg")
        
        img = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE) 

        if img is None:
            print(f"Error: Unable to load image at path: {image_path}")
            continue
        
        colored_img = apply_colormap(img)
        cv2.imshow("Image Display", colored_img)

        key = cv2.waitKey(delay)
        if key == 27:  # Escape key
            break



if __name__ == "__main__":

    directory_path = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/experiments/masks/"
    num_images = 1150
    display_images(directory_path, num_images)
