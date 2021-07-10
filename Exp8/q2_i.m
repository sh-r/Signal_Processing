clear all; 
clc;
close all; 
t=-5000:5000; 
x=cos(31.4*t)+2*cos(188.5*t)+0.5*cos(43.98*t); 
plot(t,x); xlabel('time in sec'); 
ylabel('x(t)'); 
title('continuous time signal');