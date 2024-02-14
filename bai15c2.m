% Tạo ma trận X và Y sử dụng linspace
x = linspace(-2, 2, 101); % 101 điểm từ -2 đến 2
y = linspace(-1, 1, 21);  % 21 điểm từ -1 đến 1

[X, Y] = meshgrid(x, y);  % Tạo lưới tọa độ (X, Y)

% Biểu diễn hàm F theo X và Y
F = X.^2 + Y.^2;

% Vẽ đồ thị của F theo X và Y bằng cách sử dụng plot3 hoặc scatter3
figure;
plot3(X(:), Y(:), F(:), 'o'); % sử dụng plot3 để vẽ đồ thị 3D
xlabel('X');
ylabel('Y');
zlabel('F(X, Y)');
title('Đồ thị hàm F(X, Y) = X^2 + Y^2');

% Hoặc sử dụng scatter3 để tạo đồ thị scatter 3D
figure;
scatter3(X(:), Y(:), F(:), 'filled');
xlabel('X');
ylabel('Y');
zlabel('F(X, Y)');
title('Đồ thị hàm F(X, Y) = X^2 + Y^2');
