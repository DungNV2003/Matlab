% Bài 16
t=0:10:360;% Véc tơ t
p=0:10:360;% Véc tơ p
R=3;% Bán kính
[T,P]=meshgrid(t,p);% Tạo lưới tọa độ (T,P)
Z = R*sin(pi*T./180);% Biểu diễn Z trong hệ tọa độ cầu
X = R*sqrt(R^2-Z.^2).*cos(pi*P./180);% Biểu diễn X trong hệ tọa độ cầu
Y = R*sqrt(R^2-Z.^2).*sin(pi*P./180);% Biểu diễn Y trong hệ tọa độ cầu
surf(X,Y,Z);% Vẽ đường tròn
xlabel('x-axis');
ylabel('y-axis');
zlabel('F');