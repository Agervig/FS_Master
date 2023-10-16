from numpy import genfromtxt
import numpy as np
import os
import math

class CamParams:
    def __init__(self, path = "..\calib"):
        self.path = path
        self.K = self.getK()
        self.P = self.getP()
        self.fov = self.getFov()
        self.radial_dist = self.getRadial()
        self.tang_dist = self.getTang()
        self.A = self.getA()
        self.H = np.array([
               [0.0222886, -0.999716, -0.00838127, 0.017202133],
               [-0.0579, 0.0070785, -0.998297, 0.1632],
               [0.998074, 0.0227359, -0.0577259, 0.137166],
               [0, 0, 0, 1]
               ])
        self.P_thomas = np.array([
                [1417.05365482, 0, 943.28929921, 0],
                [0, 1414.17073022, 621.71082445, 0],
                [0, 0, 1, 0]
               ])
    


    def getPthomas(self):
        return self.P_thomas
    
    def getRadial(self):
        #radial_dist = np.array([-0.2410, 0.0931])
        radial_dist = np.array([-0.1641425, 0.0967652]) #Thomas distortion param
        return radial_dist

    def getTang(self):
        #tang_dist = np.array([0.002, -0.0007])
        tang_dist = np.array([0.00069999, -0.00059894])    #Thomas distortion param
        return tang_dist

    def getK(self):
        #path = os.path.join(self.path, "K_airport.csv")
        #K = genfromtxt(path, delimiter=",")
        #K = [[1166.8, 0, 746.9],[0, 1170.9, 586.7,], [0, 0, 1]]
        K = [[1417.05365482, 0, 943.28929921],[0, 1414.17073022, 621.71082445], [0, 0, 1]] #THOMAS
        K = np.asarray(K)
        return K
    
    def getP(self):
        #path = os.path.join(self.path, "projection_airport.csv")
        #K = genfromtxt(path, delimiter=",")
        #H = [[0.9955, 0.0774, 0.0539, 0.0046],[0.0635, -0.1272, -0.9898, 0.0435],[-0.0698, 0.9889, -0.1315, -0.0979], [0, 0, 0, 1]]
        H = [[0.0222886, -0.999716, -0.008381, -0.020202], [-0.057900, 0.007079, -0.998297, 0.1632], [0.998074, 0.022736, -0.057726, 0.137166], [0, 0, 0, 1]] #Thomas
        H = np.asarray(H)
        K = self.K
        zeroes = np.zeros((3,1))
        K = np.hstack((K, zeroes))
        P = K @ H
        return P
    
    def getH(self):
        return self.H

    def getFov(self):
        #path = os.path.join(self.path, "fov_new.csv")
        #K = genfromtxt(path, delimiter=",")
        #fov = [math.radians(76.), math.radians(58.2)] 
        fov = [1.19088, 0.8025]
        return fov

    def getA(self):
        A = [[4., 0, 0, 0],[0, 4., 0, 0],[0, 0, 0, 0]]      #The focal length is in mm



# from numpy import genfromtxt
# import numpy as np
# import os
# import math

# class CamParams:
#     def __init__(self, path = "..\calib"):
#         self.path = path
#         self.K = self.getK()
#         self.P = self.getP()
#         self.fov = self.getFov()
#         self.radial_dist = self.getRadial()
#         self.tang_dist = self.getTang()
#         self.A = self.getA()
#         self.H = np.array([
#                [0.0222886, -0.999716, -0.00838127, 0.017202133],
#                [-0.0579, 0.0070785, -0.998297, 0.1532],
#                [0.998074, 0.0227359, -0.0577259, 0.137166],
#                [0, 0, 0, 1]
#                ])
#         self.P_thomas = np.array([
#         [1417.05365482, 0, 943.28929921, 0.],
#         [0, 1414.17073022, 621.71082445, 0],
#         [0, 0, 1, 0]
#         ])
       
    


#     def getPthomas(self):
#         return self.P_thomas
    
#     def getRadial(self):
#         #radial_dist = np.array([-0.2410, 0.0931])
#         radial_dist = np.array([-0.1641425, 0.0967652]) #Thomas distortion param
#         return radial_dist

#     def getTang(self):
#         #tang_dist = np.array([0.002, -0.0007])
#         tang_dist = np.array([0.00069999, -0.00059894])    #Thomas distortion param
#         return tang_dist

#     def getK(self):
#         #path = os.path.join(self.path, "K_airport.csv")
#         #K = genfromtxt(path, delimiter=",")
#         #K = [[1166.8, 0, 746.9],[0, 1170.9, 586.7,], [0, 0, 1]]
#         K = [[1417.05365482, 0, 943.28929921],[0, 1414.17073022, 621.71082445], [0, 0, 1]] #THOMAS
#         K = np.asarray(K)
#         return K
    
#     def getP(self):
#         #path = os.path.join(self.path, "projection_airport.csv")
#         H = [[0.0222886, -0.999716, -0.008381, -0.020202], [-0.057900, 0.007079, -0.998297, 0.1232], [0.998074, 0.022736, -0.057726, 0.137166], [0, 0, 0, 1]] #Thomas
#         H = np.asarray(H)
#         K = self.K
#         zeroes = np.zeros((3,1))
#         K = np.hstack((K, zeroes))
#         #print("SHAPE OF K: ", K.shape)
#         #print("SHAPE OF H: ", H.shape)
#         P = K @ H
#         return P
    
#     def getH(self):
#         return self.H

#     def getFov(self):
#         #path = os.path.join(self.path, "fov_new.csv")
#         #K = genfromtxt(path, delimiter=",")
#         #fov = [math.radians(76.), math.radians(58.2)] 
#         fov = [1.19088, 0.8025]
#         return fov

#     def getA(self):
#         A = [[4., 0, 0, 0],[0, 4., 0, 0],[0, 0, 0, 0]]      #The focal length is in mm