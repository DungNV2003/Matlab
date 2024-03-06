%cach 1
t = 0:10:360;
p = 0:10:360;
R = 3;
[T, P] = meshgrid(t, p);
Z = R * sin(pi * T / 180);
X = R * sqrt(R^2 - Z.^2) .* cos(pi * P / 180);
Y = R * sqrt(R^2 - Z.^2) .* sin(pi * P / 180);

% Sử dụng plot3 để vẽ đồ thị 3D
figure;
plot3(X(:), Y(:), Z(:), 'o-');
xlabel('x-axis');
ylabel('y-axis');
zlabel('F');
title('Vẽ đồ thị bằng plot3');

% Sử dụng scatter3 để vẽ đồ thị scatter 3D
figure;
scatter3(X(:), Y(:), Z(:), 'filled');
xlabel('x-axis');
ylabel('y-axis');
zlabel('F');
title('Vẽ đồ thị bằng scatter3');


% cach 2
t = 0:10:360;
p = 0:10:360;
R = 3;
[T, P] = meshgrid(t, p);
Z = R * sin(pi * T / 180);
X = R * sqrt(R^2 - Z.^2) .* cos(pi * P / 180);
Y = R * sqrt(R^2 - Z.^2) .* sin(pi * P / 180);

% Sử dụng surf để vẽ đồ thị 3D
figure;
surf(X, Y, Z);
xlabel('x-axis');
ylabel('y-axis');
zlabel('F');
title('Vẽ đồ thị bằng surf');

% Sử dụng mesh để vẽ đồ thị mặt lưới 3D
figure;
mesh(X, Y, Z);
xlabel('x-axis');
ylabel('y-axis');
zlabel('F');
title('Vẽ đồ thị  mesh');

