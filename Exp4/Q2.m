clc 
clear all
close all

t= -1:0.01:1;

%(i)
y1= sin(2*pi*t);
plot(t,y1)
title("sin(2πt)")
grid on

%(ii)
y2= sin(2*pi*t) + cos(2*pi*5*t);
figure
plot(t,y2)
title("sin(2πt)+cos(10πt)")
grid on

%(iii)
y3= exp(j*pi*2*t);
figure
subplot(3,1,1)
plot(t,real(y3) , t,imag(y3))
title("exp(j2πt)")
grid on

%extra
y3a= abs(y3);
subplot(3,1,2)
plot(t,y3a)
grid on

%extra
y3b= angle(y3);
subplot(3,1,3)
plot(t,y3b)
grid on

%(iv)
y4= exp(j*pi*(2/3)*t) + exp(j*pi*(3/4)*t);
figure
plot(t,real(y4) , t,imag(y4))
title("exp(j2πt/3) + exp(j3πt/4)")
grid on
