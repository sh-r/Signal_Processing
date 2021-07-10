clc
clear all 
close all

%original question
t= -5 : 0.01 : 10;
y= (t+1).*(t>=-2 & t<-1) + 1.*(t>=-1 & t<0) + 2.*(t>=0 & t<1) + (2-t).*(t>=1 &t<2);
plot(t,y)
figure
grid on
axis([-5 10 -2 4])
title('original')

%(i)
t1= (t-1);
y1= (t1+1).*(t1>=-2 & t1<-1) + 1.*(t1>=-1 & t1<0) + 2.*(t1>=0 & t1<1) + (2-t1).*(t1>=1 &t1<2);
subplot(2,2,1)
plot(t,y1)
grid on
axis([-5 10 -2 4])
title('(i)')

%(ii)
t2= 2-t;
y2= (t2+1).*(t2>=-2 & t2<-1) + 1.*(t2>=-1 & t2<0) + 2.*(t2>=0 & t2<1) + (2-t2).*(t2>=1 &t2<2);
subplot(2,2,2)
plot(t,y2)
grid on
axis([-5 10 -2 4])
title('(ii)')

%(iii)
t3= 2.*t+1;
y3= (t3+1).*(t3>=-2 & t3<-1) + 1.*(t3>=-1 & t3<0) + 2.*(t3>=0 & t3<1) + (2-t3).*(t3>=1 &t3<2);
subplot(2,2,3)
plot(t,y3)
grid on
axis([-5 10 -2 4])
title('(iii)')

%(iv)
tdiv= -5 : 0.01 : 15; %The original time vector is not accomodating this signal, graph is going out of bounds. Thus, changing the time vector.
t4= 4- (tdiv./2);
y4= (t4+1).*(t4>=-2 & t4<-1) + 1.*(t4>=-1 & t4<0) + 2.*(t4>=0 & t4<1) + (2-t4).*(t4>=1 &t4<2);
subplot(2,2,4)
plot(tdiv,y4)
grid on
title('(iv)')

