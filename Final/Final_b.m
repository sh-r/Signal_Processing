clc 
close all
clear all

t = -10:0.001:15;

x = (t+1).*(t>=-1 & t<=0) +1.*(t>0& t<=1) + (2-t).*(t>1& t<=2);
subplot(4,1,1);
plot(x)
grid on

h = 1.*(t<=1 & t>=-1);
subplot(4,1,2);
plot(h)

p = length(x);
q = length(h);
X = [x,zeros(1,q)];
H = [h,zeros(1,p)];

for n=1:p+q-1
    Y(n) = 0;
    for k = 1:q
        if(n-k+1)>0
            Y(n) = Y(n) + X(k).*H(n-k+1);
        else
        end
    end
end

subplot(4,1,3);
plot(Y)
xlabel("time")
ylabel("Y(t)")
title('convolution without using conv function');

Z= conv(x,h);
subplot(4,1,4)
plot(Z);
xlabel('n');
ylabel('Y[n]');
title('Convolution using conv function')
grid on