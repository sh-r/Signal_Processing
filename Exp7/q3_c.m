clc;
clear all;
close all;
t=-5:0.1:5;x1=heaviside(t)-heaviside(t-1);
x2=heaviside(t-1)-heaviside(t-2);
x3=conv(x1,x2);
plot(x3);

x3_lap=heaviside(t - 1)*(t - 1) - 2*heaviside(t - 2)*(t -2) + heaviside(t - 3)*(t - 3);
plot(x3_lap);