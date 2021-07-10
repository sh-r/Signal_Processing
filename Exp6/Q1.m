clc
close all
clear all

t = -10:0.001:15;		

x= 0.95.*t.*(t>=1 & t<=5);
h= 1.*(t>=2 & t<=10);	

subplot(4,1,1);
plot(t,x);
title('x(t)');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(4,1,2);
plot(t,h);
%axis([0 12 -2 2]);
title('h(t)');
xlabel('Time');
ylabel('Amplitude');
grid on;

p=length(x);		
q=length(h);		
X= [x,zeros(1,q)];
H= [h,zeros(1,p)];

for n=1:p+q-1
    Y(n)=0;
    for k=1:q
        if(n-k+1)>0
            Y(n)=Y(n)+x(k).*H(n-k+1);
        else
        end
    end
end

subplot(4,1,3);
plot(Y);
title('Convolution without using conv function')
xlabel('n');
ylabel('Y[n]');
grid on

Z= conv(x,h);
subplot(4,1,4)
plot(Z);
xlabel('n');
ylabel('Y[n]');
title('Convolution using conv function')
grid on

