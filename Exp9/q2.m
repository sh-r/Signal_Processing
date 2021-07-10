b=[1 0];
a=[1 2000];
sys1=tf(b,a);
pzmap(sys1);
f=0:0.1:5;
w=2*pi*f;
h=freqs(b,a,w);
mag=abs(h);
phase=angle(h);
magdb=20*log(mag);
figure
subplot(3,1,1)
plot(w,mag)
xlabel('frequency (rad/s)')
ylabel('magnitude(in normalized units)')
subplot(3,1,2)
plot(w,magdb)
xlabel('frequency (rad/s)')
ylabel('magnitude(in dB)')
subplot(3,1,3)
plot(w,phase)
xlabel('frequency (rad/s)')
ylabel('phase (radians)')