a=1;r=1;
t0=0;
y0=0; % Điều kiện ban đầu
tf=2;
t = [0:0.01:tf];
yt=1-exp(-a*t);% Nghiệm đúng của PTVT đã cho
plot(t,yt,'k'), hold on
h = 1/4;
klast = (tf-t0)/h;
y(1) = y0;
tvec(1) = t0;
for k = 1:klast
 yp = (1 - a*h)*y(k) +h*r; % Euler's formula
 y(k + 1) = (1 - a*h/2)*y(k) + (2*r-a*yp)*h/2;
% Công thức Euler biến đổi
 tvec(k+1) = tvec(k) + h;
 plot([k - 1 k]*h,[y(k) y(k+1)],'b', k*h,y(k+1),'ro')
 pause;
end
