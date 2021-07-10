clc
clear all
close all

t= -5:0.01:5;

%heaviside function

%(i)
y1= heaviside(t);
subplot(1,2,1)
plot(t,y1)
title('u(t)')

%(ii)
y2= t.*heaviside(t);
subplot(1,2,2)
plot(t,y2)
grid on
title('tu(t)')

%(iii)
y3= sin(2*pi*t).*heaviside(t);
figure
plot(t,y3)
title('sin(ω0t)u(t)') 
grid on

%extra
y4= heaviside(-t);
figure
plot(t,y4)
grid on
axis([-5 5 -1 2]); grid on

%extra
y5= (y1+y3)/2
figure
plot(t,y5)
grid on