
fc=300;
fs=8*fc;
A=2;
t=[0:1/fs:1];
s=2.*cos(20*pi*t+pi/4)+cos(30*pi*t);
subplot(311)
plot(t,s)
title('Tin hieu dau vao');
y=ammod(s,fc,fs,A);
subplot(312)
plot(t,y)
title('Tin hieu sau khi dieu che');
m=amdemod(y,fc,fs,A);
subplot(313)
plot(t,m)
title('Tin hieu sau giai dieu che');