function [t, y] = bai25(N, h, t0, y0, f)

 t = zeros(1, N+1);
 y = zeros(1, N+1);
 t(1) = t0;
 y(1) = y0;

for i = 1:N
    k1 = h*feval(f,t(i),y(i));
    k2 = h*feval(f,t(i)+2/3*h,y(i)+2/3*k1);
    k3 = h*feval(f,t(i)+2/3*h,y(i)+2/3*k2);
    y(i + 1) = y(i) + (2*k1 + 3*k2 + 3*k3)/8; 
    t(i+1) = t(i) + h;
end



