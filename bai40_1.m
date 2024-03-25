T_s = 1/bit_rate;

% Thời gian truyền 1 bit
T_bit = N * T_s;

% Thời gian mẫu tín hiệu
t = 0:T_s:T_bit;

% Chuỗi ký tự ngẫu nhiên
data = randi([0,1],1,N);

x = [1 j -1 -j];

% Phần thực và ảo của các điểm
x_r = real(x);
x_i = imag(x);
q=1-cos(e*pi*t/t_bit)

for i=1:4
    pc=

axis equal; 