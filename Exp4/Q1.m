clc
clear all
close all

t=-5:0.001:5;
x1= 1;
x2= 0;

%(i) unit step signal
y1= x1.*(t>=0) + x2.*(t<0);
subplot(3,1,1)
plot(t,y1)
title("unit step signal")
axis([-5 5 -1 2]); grid on

%(ii) unit impulse signal
y2=x1.*(t==0) + x2.*(t<0 & t>0);
subplot(3,1,2)
plot(t,y2)
title("unit impulse signal")
axis([-5 5 -1 2]); grid on; xlabel('time')

%(iii) unit ramp signal
y3= t.*(t>=0) + x2.*(t<0);
subplot(3,1,3)
plot(t,y3)
title("unit ramp signal")
grid on

%(iv) triangular signal
t1=-1:0.1:1;
y4= tripuls(t1,20e-3);
figure
plot(t1,y4)
title("triangular signal")
grid on

%(v) square function
y5= square(t)
figure
plot(t,y5)
title("square signal")
grid on

%(vi) sinc function
y6= sinc(t)
figure
plot(t,y6)
title("sinc signal")
grid on

%(vii) sawtooth signal
y7= sawtooth(0.5*20*t); %0.5 indicates time period
figure
plot(t,y7)
axis([0 1 0 1]); grid on
title("sawtooth signal")
