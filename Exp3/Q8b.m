clc
clear all
close all

t=(0:pi/100:2*pi);
x= sin(t);
y= sin(t-0.25);
z= sin(t-0.5);

subplot(3,1,1)
plot(t,x, "b.", 'Linewidth',1)
title('x= sin(t)')
xlabel('Time')

subplot(3,1,2)
plot(t,y, "g*", 'Linewidth',2)
title('y= sin(t-0.25)')
xlabel('Time')

subplot(3,1,3)
plot(t,z, "r-", 'Linewidth',3)
title('z= sin(t-0.5)')
xlabel('Time')

