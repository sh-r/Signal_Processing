clc
clear all
close all

t= -3:0.01:3;

x1= t+1;
x2= 1;
x3= 2;
x4= 2-t;

y1= x1.*(t>=-2 & t<-1) + x2.*(t>=-1 & t<0) + x3.*(t>=-0 & t<1) + x4.*(t>=1 & t<2);
plot(t,y1); grid on

axis([-3 3 -2 3]);
xticks(-3:1:3);
yticks(-2:1:3);

%(ii)time operations
t1 = (t - 1);
y2=(t1+1).*(t1>=-2 & t1 <=-1)+1.*(t1>=-1 & t1<0)+2.*(t1>=0 & t1<=1)+(2-t1).*(t1>1 & t1 <2);
figure
plot(t,y2); grid on
axis([-3 3 -3 4]);
%THIS IS WRONG NO NEED TO DO THIS
