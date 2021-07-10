clc;
clear all;
close all;x=[1,2,3,4];
%finding FFT of x(n);
fX=fft(x);
disp('FFT of x(n)= ');
disp(fX);
%finding DFT of x(n)
dX=zeros(1,4);
for k=0:3
 for n=0:3
 dX(k+1)=dX(k+1)+x(n+1).*exp(((-i).*2.*pi.*k.*n)./4); 
 end;
end;
disp('DFT of x(n)= ');
disp(dX);