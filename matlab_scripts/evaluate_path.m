close all
clc
clear

path_to_gt = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/DataPostProcessing/gt_path.json";
path_to_est = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/final_test/est_path.json";

fid = fopen(path_to_gt, "r");
raw = fread(fid, inf);
str = char(raw');
fclose(fid);


data = jsondecode(str);


gt_x = zeros(1, length(data.points));
gt_y = zeros(1, length(data.points));
for i = 1:length(data.points)
    gt_x(i) = data.points(i).x;
    gt_y(i) = data.points(i).y;
end

gt_x = gt_x(35:end-30)
gt_y = gt_y(35:end-30)


fid = fopen(path_to_est, "r");
raw = fread(fid, inf);
str = char(raw');
fclose(fid);

data = jsondecode(str);

est_x = zeros(1, length(data.points));
est_y = zeros(1, length(data.points));
for i = 1:length(data.points)
    est_x(i) = data.points(i).x;
    est_y(i) = data.points(i).y;
end


path_to_data = "filtered_dataset2.csv"
data = readtable(fullfile(path_to_data));
a = data.Var1;
theta = data.Var2;


figure()
plot(gt_x, gt_y, 'b*-', 'LineWidth', 1.5);
hold on;
plot(est_x, est_y, 'ro-', 'LineWidth', 1.5);


figure()
plot(gt_x, gt_y, "b*-", "LineWidth", 1.5);
hold on;
plot(est_x, est_y, "ro-", "LineWidth", 1.5);
plot(gt_x(1), gt_y(1), "bx", "MarkerSize", 10, "LineWidth", 10);
plot(gt_x(end), gt_y(end), "bx", "MarkerSize", 10, "LineWidth", 10);


plot(est_x(1), est_y(1), "rx", "MarkerSize", 10, "LineWidth", 10);
plot(est_x(end), est_y(end), "rx", "MarkerSize", 10, "LineWidth", 10);

N = length(gt_x)
dist = 0
for i = 1:N
    dist = dist + (gt_x(i) - est_x(i))^2 + (gt_y(i) - est_y(i))^2
end

RMSE = sqrt(dist/N)

disp(["RMSE: ", num2str(RMSE)])


