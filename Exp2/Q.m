clc
clear all
close all

A= [1 2 3; 4 5 6; 7 8 9]
B= [3 4 6; 8 56 34; 11 15 21];
size(B)
length(B)

A = [1 2 3;4 5 6;7 8 9];
B = [10 20 20;40 50 60;70 80 90];
C = A.'
D= B.'
det(A)

A=[1 2 3; 4 5 6; 7 8 9];
A(2,:)
A(:,3)= [1;2;3]
A(:,3)= []
B=A
B(3,:)=[]

A = [1 2 3 11 12 13; 4 5 6 14 15 25; 7 8 9 45 32 23; 5 34 65 12 19 26];
A(2,1:3)
B=A(:,4);
B= transpose(B)
diag(A)
triu(A)

eye(3,3)
zeros(3,3)
ones(3,3)

