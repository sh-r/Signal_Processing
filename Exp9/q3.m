TF = =(10^4s)/(s^2+10^4s+10^9);
sys=tf([10^4 0],[1 10^4 10^9])
w=0:1:10000000;
a=(10^4*j*w)./((j*w).^2+10^4*j*w+10^9);
z=max(abs(a))
subplot(4,1,1)
plot(w,abs(a).^2)
title('mag vs freq')
subplot(4,1,2)
plot(w,20*log10((abs(a))./z))
title('mag in db vs freq')
subplot(4,1,3)
semilogx(w,abs(a))
title('mag vs freq semilog scale')
subplot(4,1,4)
pzmap(sys)
