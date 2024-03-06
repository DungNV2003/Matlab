x= (-2:0.2:2);% Khởi tạo véc tơ x
y = (-1:0.1:1);% Khởi tạo véc tơ y
[X,Y] = meshgrid(x,y);% Tạo lưới tọa độ (X,Y)
Z= X.^2 + Y.^2;% Biểu diễn hàm F theo X và Y
surf(X, Y , Z);% Vẽ đồ thị của F theo X và Y
xlabel('X');
ylabel(' Y ');