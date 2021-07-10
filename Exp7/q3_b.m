clc;
clear all;
close all;
syms t
x1=t.*t-2.*t;
x1s=laplace(x1);
x2=t;
x2s=laplace(x2);
x3s=x1s.*x2s;
x3=ilaplace(x3s);