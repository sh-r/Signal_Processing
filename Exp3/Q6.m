clc
clear all
close all

t= 0:0.1:10;

y= cos(t);
subplot(2,2,1)%indicates the quadrants so quadrant 1 here out of 2x2 columns and rows
plot(t,y) %for continuous
hold on
%stem(t,y) %this is discrete graph
%hold off
%figure

x= sin(t)
subplot(2,2,4)
plot(t,x)
legend('sine curve')
axis([1.5 8.5 -1 1])
xlabel('Time')
ylabel('Amplitude')
title('continuous time signal')
grid on
hold off

%hold on/off is for plotting on the same graph