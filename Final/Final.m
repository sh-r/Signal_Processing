clc 
close all
clear all

%t=-5:0.001:5;
%xt= (t+1).*(t>=-1 & t<=0) +1.*(t>0& t<=1) + (2-t).*(t>1& t<=2);
%x1t= 1.*(t<=1 & t>=-1);

t= -3:0.01:3;

x= t+1;
x1= 1;
x2= 2-t;
xt= x.*(t>=-1 & t<=0) +x1.*(t>0 & t<=1) + x2.*(t>1 & t<=2);
subplot(2,1,1)
plot(t,xt)
grid on
axis([-2 3 -1 2]);
xticks(-2:1:3);
yticks(-1:1:2);
xlabel('t')
ylabel('x(t)')

y= 2;
yt= y.*(t>=-1 & t<=1);
subplot(2,1,2)
plot(t,yt) 
grid on
axis([-2 2 -1 3]);
xticks(-2:1:2);
yticks(-1:1:3);
xlabel('t')
ylabel('x1(t)')

