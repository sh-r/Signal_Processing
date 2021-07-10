clc
clear all
close all

t=(0:pi/100:2*pi);
x= sin(t);
y= sin(t-0.25);
z= sin(t-0.5);
hold on

plot(t,x, "b.", 'Linewidth',1)
plot(t,y, "g*", 'Linewidth',2)
plot(t,z, "r-", 'Linewidth',3)

xlabel('Time')
ylabel('sin graph')
title('Plot of sin() function')
legend('x','y','z')
