close all
clc 
clear
format long
path_to_csv = "/home/agervig/git/FSM/MSc_Fstudent_SLAM/data/my_data/2/imu_data/";
path_to_comp_acc_data = "/acc_dataset2.csv"
path_to_yaw_data = "/yaw_dataset2.csv"
name_save_filtered_data = "filtered_dataset2.csv"

name_acc_plot = "linear_acc_dataset2.png";
name_freq_acc_plot = "freq_plot_acc_dataset2.png";
name_yaw_plot = "yaw_dataset2.png";
name_freq_yaw_plot = "freq_plot_yaw_dataset2.png";
name_yaw_filtered_plot = "yaw_filtered_dataset2.png";
name_filtered_acc_plot = "acc_filtered_dataset2.png"
files = dir(fullfile(path_to_csv,"*csv"));


file_acc = readtable(fullfile(path_to_comp_acc_data))
acc_x = file_acc.Var1
file_yaw = readtable(fullfile(path_to_yaw_data))
yaw = file_yaw.Var1

%plotting linear acceleration in X direction
figure;
plot(acc_x)
xlabel("Sample")
ylabel("Acceleration [m/s^2]")
saveas(gcf, name_acc_plot)
  

acc_lowpass = lowpass(acc_x, 15, 100)
acc_filtered = acc_lowpass
%acc_filtered = medfilt1(acc_lowpass, 20)
figure
plot(acc_filtered)
xlabel("Sample")
ylabel("Acceleration [m/s^2]")
saveas(gcf, name_filtered_acc_plot)


%-----------------------------------------------------------------------------------------------

Fs = 100;                       %Sampling rate
T = 1/Fs;                       %Sampling period
n = length(acc_x);              %Length of signal
t = (0:n-1)*T;                  %Time vector

%Plotting frequency in the x direction
F_acc_x = fft(acc_x);            

P2 = abs(F_acc_x/n);
P1 = P2(1:n/2+1);
P1(2:end-1) = 2*P1(2:end-1);
figure;
f = Fs*(0:(n/2))/n;
plot(f,P1)
xlabel("Frequenzy(Hz)")
ylabel("Amplitude")
saveas(gcf, name_freq_acc_plot)

%acc_x = lowpass(acc_x, 5, Fs)

%figure;
%plot(acc_x)
%xlabel("sample")
%ylabel("Acceleration")
%title("Linear acceleartion in X direction")

yaw = unwrap(yaw)
offset = yaw(1)
yaw = yaw-offset
yaw = yaw*-1
%----------------------------------------------------------------------------------------------

%Plotting yaw angle
figure

plot(yaw)
xlabel("Sample")
ylabel("Angle [rad]")
saveas(gcf, name_yaw_plot)

%F_yaw = fft(yaw);
%P2 = abs(F_yaw / n);
%P1 = P2(1:n/2+1);
%P1(2:end-1) = 2*P1(2:end-1);
%figure
%plot(f,P1)
%xlabel("Frequency(Hz)")
%ylabel("Amplitude")
%saveas(gcf, name_freq_yaw_plot)

%Plotting yaw angle with median filter applied
%figure
%yaw_filtered = medfilt1(yaw, 45)
%plot(yaw_filtered)
%xlabel("Sample")
%ylabel("Angle [rad]")
%saveas(gcf, name_yaw_filtered_plot)

data = [acc_filtered, yaw]
csvwrite(name_save_filtered_data, data)
