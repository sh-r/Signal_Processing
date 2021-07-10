clc
clear all
close all

m= input('no. of rows of A= ');
n= input('no. of columns of A= ');
p= input('no. of rows of B= ');
q= input('no. of columns of B= ');

A= randi(10, m, n)
B= randi(15, p, q)
if n==p
    c= A*B
else
    disp('multiplication does not exist')
end