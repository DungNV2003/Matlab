function [t, y] = bai26(N, h, t0, y0, f)

 t = zeros(1, N+1);
 y = zeros(1, N+1);
 t(1) = t0;
 y(1) = y0;

for i = 1:N
    k1 = h*feval(f,t(i),y(i));
    k2 = h*feval(f,t(i)+h/2,y(i)+k1/2);
    k3 = h*feval(f,t(i)+h/2,y(i)+k2/2);
    k4 = h*feval(f,t(i)+h,y(i)+k3);
    y(i + 1) = y(i) + (k1 + 2*k2 + 2*k3 + k4)/6; 
    t(i+1) = t(i) + h;
end
