% Độ dài chuỗi ký tự ngẫu nhiên
N = 100;

% Tốc độ truyền bit (bps)
bit_rate = 10e6;

% Thời gian mẫu hóa
T_s = 1/bit_rate;

% Thời gian truyền 1 bit
T_bit = N * T_s;

% Thời gian mẫu tín hiệu
t = 0:T_s:T_bit;

% Chuỗi ký tự ngẫu nhiên
data = randi([0,1],1,N);

% Biến đổi dữ liệu sang dạng -1 và 1 (BPSK)
data_bpsk = 2*data - 1;

% Hệ số của xung raised cosine
alpha = 0.5;

% Hàm xung raised cosine
pulse_shape = @(t) (1 - alpha + 4*alpha/pi) * sinc((1-alpha)*t/T_s) + alpha/sqrt(2) * ((1+2/pi)*sin(pi*t/T_s/(1-alpha)) + (1-2/pi)*cos(pi*t/T_s/(1-alpha)));

% Biểu diễn tín hiệu BPSK sử dụng xung raised cosine
s = zeros(size(t));
for i = 1:N
    s = s + data_bpsk(i) * pulse_shape(t-(i-1)*T_bit);
end

% Vẽ dạng sóng của tín hiệu
figure;
plot(t, s);
title('Tín hiệu BPSK sử dụng xung Raised Cosine');
xlabel('Thời gian (s)');
ylabel('Biên độ');
grid on;

% Tính và vẽ phổ tín hiệu
L = length(s);
f = bit_rate * (-L/2:L/2-1)/L;
S = fftshift(fft(s));
P = abs(S).^2/L;
figure;
plot(f,10*log10(P));
title('Phổ Tín Hiệu BPSK');
xlabel('Tần số (Hz)');
ylabel('bien do (dB)');
grid on;
