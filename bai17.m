% Tạo vectơ y
y = 1:0.5:5;

% Tạo ma trận điều khiển để đảo trật tự các số hạng của vectơ y
n = length(y);
C = flip(eye(n));

% Sử dụng ma trận điều khiển để đảo trật tự vectơ y
yr = y * C;

% Tạo vectơ z chỉ chứa các số nguyên từ vectơ y
z = round(y);

% Hiển thị kết quả
disp('Vectơ y:')
disp(y)

disp('Vectơ yr:')
disp(yr)

disp('Vectơ z:')
disp(z)
