clc
clear all
close all
t= 0:0.1:10;
y= cos(t);

plot(t,y)
hold on
stem(t,y) 
hold off

xlabel('Time')
ylabel('cos graph')
title('Plot of y=cos(t)')


