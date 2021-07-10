clc;
clear all;
close all;
t=-5:0.1:5;
x1=t.*t-2.*t;
x2=t;
x3=conv(x1,x2);
plot(x3);

x3_lap=(t.^4)./12-(t.^3)./3;
plot(x3_lap);
