clc 
clear all 
close all
n = input('give no. of terms: ')
sum= 0;
for k=1:n
    sum=sum+(k*power(-1,k)/power(2,k));
end
disp('The final sum is=')
disp(sum)