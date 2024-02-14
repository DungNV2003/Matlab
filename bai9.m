t=[0:0.1:10];
disp ('gia tri cua tin hieu theo thoi gian la : ')
st=sin(10*pi*t).*cos(6*pi*t)+exp(-0.1*t)
subplot(2,1,1);
plot(t,st);
xlabel('t');
ylabel('bien do st');
title('ve tin hieu lien tuc');
subplot(2,1,2);
stem(t,st);
xlabel('t');
ylabel('bien do st');
title('ve tin hieu roi rac');
