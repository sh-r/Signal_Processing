clc;
clear all;
close all;
syms a w t;
x1=t;
x1s=laplace(x1);
display(x1s);
x2=exp(-a.*t);
x2s=laplace(x2);
display(x2s);
x3=cos(w.*t);
x3s=laplace(x3);
display(x3s);
x4=exp(-a.*t).*cos(w.*t);
x4s=laplace(x4);
display(x4s);
x5=t^2-3.*t;
x5s=laplace(x5);
display(x5s);