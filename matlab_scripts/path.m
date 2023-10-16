close all
clc
clear

path_to_data = "filtered_dataset2.csv"
name_saved_data = "transformations_dataset2.json"
name_saved_path = "path_without_bias_sub_dataset2.png"
name_save_vel = "vel_without_bias_sub_dataset2.png"
num_transformations = 763

data = readtable(fullfile(path_to_data));
a = data.Var1;
theta = data.Var2;


%theta = theta(3445:end);
%a = a(3445:end)



figure
plot(a)
title("Acceleration")
xlabel("sample")
ylabel("m/s2")

figure
plot(theta)
title("Yaw angle")
xlabel("Sample")
ylabel("Angle (rad)")


dt = 0.01;  

N = length(a);
v = zeros(N, 1);
x_global = zeros(N, 1);
y_global = zeros(N, 1);



% Loop Through Timesteps
for t = 2:N

    v(t) = v(t-1) + a(t) * dt;
   
    x_local = v(t) * dt;
    
    R = [cos(theta(t)), -sin(theta(t)); sin(theta(t)), cos(theta(t))];
    
    delta_pos_global = R * [x_local; 0];
    
    x_global(t) = x_global(t-1) + delta_pos_global(1);
    y_global(t) = y_global(t-1) + delta_pos_global(2);
end

figure
plot(v)
xlabel("sample")
ylabel("vel m/s")
saveas(gcf, name_save_vel)


%disp('Global X:'); disp(x_global');
%disp('Global Y:'); disp(y_global');


figure;
plot(x_global, y_global, '-o');  
xlabel("X Position (m)");  
ylabel("Y Position (m)");  

grid on;  
axis equal;  
legend('Trajectory', 'Location', 'Best'); 
%saveas(gcf, name_saved_path)

poses = [x_global, y_global, theta];
transformations = zeros(3,3, num_transformations);

transformations(:, :, 1) = eye(3);
transformation_index = 2;

R = [0, -1, 0; 1, 0, 0; 0, 0, 1]

for i = 1:10:size(poses, 1)-10
   
    x = poses(i, 1);
    y = poses(i, 2);
    theta = poses(i, 3);

    T = [cos(theta), -sin(theta), x;
         sin(theta), cos(theta), y;
         0, 0, 1];
    
    %T = R * T
    transformations(:, :, transformation_index) = T;
    transformation_index = transformation_index + 1;

end


T_diff = zeros(3, 3, 763);  % One less than the original number of matrices

for i = 1:size(transformations, 3) - 1

    T1 = transformations(:, :, i);
    T2 = transformations(:, :, i + 1);
  
    R1_inv = T1(1:2, 1:2)';  
    t1 = T1(1:2, 3);
    T1_inv = [R1_inv, -R1_inv * t1; 0, 0, 1];
    
    T_diff(:, :, i) = T1_inv * T2;
end


data = struct();
for i = 1:size(T_diff, 3)
    data.(['T' num2str(i)]) = T_diff(:, :, i);
end


json_text = jsonencode(data);
fileID = fopen(name_saved_data, "w");
fprintf(fileID, json_text);
fclose(fileID);


for i = 1:size(transformations, 3)
    x_positions(i) = transformations(1, 3, i);
    y_positions(i) = transformations(2, 3, i);
end



figure;
plot(x_positions, y_positions, "-o");
xlabel("X Position");
ylabel("Y Position");
grid on;
axis equal;
saveas(gcf, name_saved_path)


