#!/bin/bash

# Starting and ending numbers
start=345
end=1157

counter=1

# Renaming csv files
#cd /home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/point_clouds2/
#for i in $(seq $start $end); do
#    mv "${i}.csv" "${counter}.csv"
#    counter=$((counter+1))
#done

counter=1


# Renaming jpg files
cd /home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/images_car2/
for i in $(seq $start $end); do
    mv "${i}.jpg" "${counter}.jpg"
    counter=$((counter+1))
done

counter=1

# Renaming jpg files in the second directory
cd /home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/1/experiments/masks2/
for i in $(seq $start $end); do
    mv "${i}.jpg" "${counter}.jpg"
    counter=$((counter+1))
done