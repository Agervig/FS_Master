close all
clc 
clear
format long
path_to_csv = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/imu_data/";

name_saved_csv_acc = "acc_dataset2.csv"
name_saved_csv_yaw = "yaw_dataset2.csv"
files = dir(fullfile(path_to_csv,"*csv"));

filenames = {files.name}
[~, idx] = sort(cellfun(@(x) str2double(regexp(x, "\d+", "match")), filenames));
files = files(idx);


acc_x = [];
acc_y = [];
acc_z = [];

quat_x = [];
quat_y = [];
quat_z = [];
quat_w = [];
timestamp = []
T = [1, 0, 0; 0, -1, 0; 0, 0, -1]

for i = 1:length(files)
    data = readtable(fullfile(files(i).folder, files(i).name));

    ax = data.linear_acceleration_x;
    ay = data.linear_acceleration_y;
    az = data.linear_acceleration_z;
    q_x = data.orientation_x;
    q_y = data.orientation_y;
    q_z = data.orientation_z;
    q_w = data.orientation_w;
    time = data.timestamp;
    time = datetime(time, "ConvertFrom", "posixtime", "TimeZone", "UTC");

    acc_x =[acc_x; ax];
    acc_y =[acc_y; ay];
    acc_z = [acc_z; az];
   
    quat_x = [quat_x; q_x];
    quat_y = [quat_y; q_y];
    quat_z = [quat_z; q_z];
    quat_w = [quat_w; q_w];

    timestamp = [timestamp; time];

end


quaternion = [quat_w quat_x quat_y quat_z];
eul = quat2eul(quaternion);
yaw = eul(:,1);


R = quat2rotm(quaternion);
g = [0; 0; -9.815];


n = size(R,3);
g_robot_all = [];

for i = 1:n
    R_single = R(:, :, i);
    g_single = R_single' * g;
    g_single_ros = T * g_single;
    g_robot_all(i, :) = g_single_ros;
end

acc_x_comp = acc_x - g_robot_all(:,1);
acc_y = acc_y - g_robot_all(:,2);
acc_z = acc_z - g_robot_all(:,3);

figure
plot(acc_x)

%acc_x_comp = acc_x
csvwrite(name_saved_csv_acc, acc_x_comp)
csvwrite(name_saved_csv_yaw, yaw)

