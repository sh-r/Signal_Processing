clc
clear all
close all

t= -5:0.01:10;
A=2;

%sin signal generation
y1= A.*sin(2*pi*0.5*t);
subplot(2,1,1)
plot(t,y1); grid on
xlabel('time')
ylabel('Amplitude')
title('input signal')
text(1, 0.5, '<- input signal', 'horizontalAlignment', 'right')

axis([-5 5 -3 3]);
xticks(-5:1:5);        
yticks(-3:1:3);

y2= y1.*(t>=-2 & t<=2)
subplot(2,1,2)
plot(t,y2); grid on
xlabel('time')
ylabel('Amplitude')
title('windowed signal')
text(1, 0.5, '<- windowed signal', 'horizontalAlignment', 'right')

axis([-5 5 -3 3]);
xticks(-5:1:5);        %all values will be shown on the graph. This command used only after 'axis' command
yticks(-3:1:3);
