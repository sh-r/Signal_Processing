clc
close all
clear all

t=-3:0.01:3;

x= exp(-0.7.*t).*(t>0 & t<1);
h= (1+t).*(t>0 & t<2);	

subplot(4,1,1);
plot(t,x);
axis([-1 5 -3 3]);
grid on;
title('x(t)');
xlabel('t');
ylabel('x(t)');

subplot(4,1,2);
plot(t,h);
axis([-1 5 -3 3]);
grid on;
title('h(t)');
xlabel('t');
ylabel('h(t)');

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
title('Y[n]')
xlabel('---->n');
ylabel('Y[n]');
grid on

Z= conv(x,h);
subplot(4,1,4)
plot(Z);
xlabel('n');
ylabel('Y[n]');
title('Convolution of 2 signals with conv function')
grid on
