clc
clear all
close all

f=50;
t=linspace(-20,20, 500);

sig= cos(2*pi*f*t);
rect_sig = sig > 0;  % Half-Wave Rectification

figure
plot(t(rect_sig), sig(rect_sig));
grid on