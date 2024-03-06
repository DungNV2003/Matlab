r = 3;
u = [0:pi/50:2*pi];
v = [0:pi/50:2*pi];

[U, V] = meshgrid(u, v);

X = r * cos(U) .* sin(V);
Y = r * sin(U) .* sin(V);
Z = r * cos(V);

surf(X, Y, Z);
title('Hình cầu bán kính R = 3');
axis on
