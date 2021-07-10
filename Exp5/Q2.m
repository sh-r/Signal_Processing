clc
clear all
close all

% non periodic fourier series
% integrals will be in a time period so assumed as periodic in that time period

%plotting original continuous time signal

t= 5 : 0.01 :15;
a0= 1.5;
%an=0
T0= input('Time period= ')
N= input('No. of harmonics= ')

x= 3.*(t>=10 & t<12)
plot(t,x); grid on; hold on
axis([9 13 -1 4])

ft= a0.*ones(1,length(t));
for n= 1:N
    bn= 3./(n.*pi).*(cos(5.*n.*pi) - cos(6.*n.*pi));
    ft= ft + bn.*(sin(n.*2.*pi.*t/4));
end

plot(t,ft); grid on
axis([9 13 -1 4]); hold off
