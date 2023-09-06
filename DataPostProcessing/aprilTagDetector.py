import cv2
from apriltag import apriltag
import numpy as np
import os


path_to_img = os.path.expanduser("~/git/FSM/MSc_Fstudent_SLAM/data/DCIM/100MEDIA/DJI_0001.JPG")

img = cv2.imread(path_to_img, cv2.IMREAD_GRAYSCALE)

detector = apriltag("tagStandard41h12")
detections = detector.detect(img)

print(detections)



# import apriltag
# import argparse
# import cv2
# import os

# path_to_video = os.path.expanduser("~/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/DJI_0021.MP4")
# path_to_img = os.path.expanduser("~/git/FSM/MSc_Fstudent_SLAM/data/DCIM/100MEDIA/DJI_0001.JPG")


# options = apriltag.DetectorOptions(families="tag36h11")
# detector  =apriltag.Detector(options)


# def detect_img(path):
#     img = cv2.imread(path)
#     rows, cols = img.shape[:2]

#     img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)


#     results = detector.detect(img_gray)
#     print(f"Number of tags detected: ".format(len(results))) 
    
#     img_resized = cv2.resize(img_gray, (int(cols * 0.5), int(rows * 0.5)))
#     cv2.imshow("img", img_resized)

#     while True:
#         if cv2.waitKey(1) == ord('q'):
#             break

# def play_video(path):
    
#     cap = cv2.VideoCapture(path)
    
#     if not cap.isOpened():
#         print("Error: Unable to read the video file")
#         return

#     while cap.isOpened():
#         ret, img = cap.read()
#         if not ret:
#             print("Finished playing the video stream or an error occurred")
            
#         img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
#         results = detector.detect(img_gray)
#         print(f"Number of tags detected: ".format(len(results)))    
#         cv2.imshow("img", img_gray)
#         if cv2.waitKey(1) == ord("q"):
#             break

#     cap.release()
#     cv2.destroyAllWindows()




# if __name__ =="__main__":
    
#     print("Starting detector")
#     detect_img(path_to_img)
#     #play_video(path_to_video)
#     print("Ending program")

# import cv2
# import apriltag
# import os
# def detect_apriltags(image_path):
#     # Read the image with OpenCV
#     image = cv2.imread(image_path, cv2.IMREAD_GRAYSCALE)

#     # Ensure the image was read correctly
#     if image is None:
#         print("Can't read image")
#         return

#     # Define the parameters for AprilTag detection
#    # options = apriltag.
    
#     # Create detector with the specified options
#     detector = apriltag.Detector(searchpath=apriltag._get_demo_searchpath())

#     # Detect the AprilTags in the image
#     detections = detector.detect(image)

#     # If you want to draw the detected tags on the image:
#     for detection in detections:
#         draw_outline(image, detection.corners)

#     # Save the image with drawn tags
#     cv2.imwrite('tag_detected.png', image)
    
#     # Return the detected tags' details
#     return detections

# def draw_outline(image, corners):
#     """Draw the outline of the detected tag."""
#     for j in range(4):
#         p0, p1 = (int(corners[j][0]), int(corners[j][1])), (int(corners[(j+1)%4][0]), int(corners[(j+1)%4][1]))
#         cv2.line(image, p0, p1, (255,0,0), 2)

# if __name__ == '__main__':
#     image_path = os.path.expanduser("~/git/FSM/MSc_Fstudent_SLAM/data/DCIM/100MEDIA/DJI_0001.JPG")
#     detected_tags = detect_apriltags(image_path)
#     for tag in detected_tags:
#         print("Detected tag ID:", tag.tag_id)