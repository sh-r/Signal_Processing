clc;
clear all;
close all;
t=-5:0.001:15;
t1= t-4;
t2=t+3;
x=(2+t).*(t>=3 & t<=5)+0.*(t<3&t>5);
plot(t,x,"b.");

y=(2+t1).*(t1>=3 & t1<=5)+0.*(t1<3&t1>5);
figure
plot(t,y,"g*");

z=(2+t2).*(t2>=3 & t2<=5)+0.*(t2<3&t2>5);
figure
plot(t,z,"r-");

%grid on;
%xlabel('time');
%ylabel('function x y z');
      text(1,6,'z(t)');
      text(4,6,'x(t)');
      text(8,6,'y(t)');

