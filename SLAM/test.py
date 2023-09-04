import numpy as np

test = [[1,1,1,01],[2,2,2,1],[3,3,3,2]]
test = np.asarray(test)

frames = []
for i in range(3):
   # print(i)
    #print(test[test[:,3]])
    frame_cones = test[test[:,3]==i]
    frames.append(frame_cones)

#print(test)
print(frames)