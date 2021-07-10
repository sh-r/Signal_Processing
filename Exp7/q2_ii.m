clc;
clear all;
close all;
t=0:0.1:10;x1=(3.*exp(-2.*t))./2 - 2.*exp(-t) + t.*exp(-2*t) + 1./2;
subplot(3,1,1);
plot(x1);
grid on;
title('x1');
x2=exp(-2.*t)/3 - (exp(-t./2).*(cos((3^(1/2).*t)./2) -
3^(1/2).*sin((3^(1./2).*t)/2)))./3;
subplot(3,1,2);
plot(x2);
grid on;
title('x2');
x3=exp(-2.*t) - 2*exp(-t) + 1;
subplot(3,1,3);
plot(x3);
grid on;
title('x3');