function [code,xcode, xq] = bai33c2(x, M)
fs = 20; % Hz
t = 0:1/fs:1;
% Do thi goc
subplot(3,1,1);
plot(t, x(t));
title('Tin hieu goc');
xlabel('t(s)');
ylabel('Bdo');

% Biểu đồ tín hiệu gốc được lấy mẫu
subplot(3,1,2);
stem(t, x(t));
title('Tin hieu lay mau');
xlabel('t(s)');
ylabel('Bdo');
% Lượng tử hóa
 Nb = log2(M); % Số bit trên mỗi từ mã
Amax = max(x(t));
delta = 2 * Amax / (M - 1);
Mq = -Amax: delta: Amax;
Ml = 0: M - 1;

xq = zeros(size(x(t)));
xcode = xq;
for k = 1: M
    ind = find(x(t) > Mq(k) - delta / 2 & x(t) <= Mq(k) + delta / 2);
    xq(ind) = Mq(k);
    xcode(ind) = Ml(k);
end
code = de2bi(xcode,Nb,'left-msb');

% Biểu đồ tín hiệu được lượng tử hóa
subplot(3,1,3);
stem(t, xq);
title('Tin hieu luong tu hoa');
xlabel('t(s)');
ylabel('Bdo');

% In ra mã đầu ra của 5 mẫu đầu tiên
fprintf('Mã đầu ra của 5 mẫu đầu tiên:\n');
disp(xcode(1: 5));
disp(code(1:5,:));
end
