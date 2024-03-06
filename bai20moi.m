r=3;
phi=linspace(0,2*pi,100);
x=r*cos(phi);
y=r*sin(phi);
plot(x,y,'b');
axis equal;
chu_vi=2*r*pi;
dien_tich=r^2*pi;
fprintf('chu vi hinh tron %.5f\n' ,chu_vi);
fprintf('chu vi hinh tron %.5f\n' ,dien_tich);

