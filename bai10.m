t=[0:1/(60*16):10];
disp ('gia tri cua tin hieu theo thoi gian la : ')
st=sin(30*pi*t).*sin(30*pi*t);
s=sin(30*pi*t).^2;
subplot(2,1,1);
plot(t,st);
xlabel('t');
ylabel('bien do st');
axis([0 0.2 0 1])
title('ve tin hieu lien tuc');
subplot(2,1,2);
stem(t,s);
xlabel('t');
ylabel('bien do st');
title('ve tin hieu roi rac');
axis([0 0.2 0 1])