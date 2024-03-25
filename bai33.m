fs = 20; 
t = 0:1/fs:1;
x = 2*cos(4*pi*t);
% Biểu đồ tín hiệu gốc
subplot(3,1,1);
plot(t, x);
title('Tin hieu goc');
xlabel('t(s)');
ylabel('Bdo');
% Biểu đồ tín hiệu lấy mẫu
subplot(3,1,2);
stem(t, x);
title('lay mau tin hieu');
xlabel('t(s)');
ylabel('Bdo');
% Lượng tử hóa
M = 8; 
Nb = log2(M); 
Amax = max(abs(x));
delta = 2*Amax/(M-1);
Mq = -Amax:delta:Amax;
Ml = 0:M-1;

xq = zeros(size(x));
xcode = xq;
for k = 1:M
    ind = find(x > Mq(k)-delta/2 & x <= Mq(k)+delta/2);
    xq(ind) = Mq(k);
    xcode(ind) = Ml(k);
end
code = de2bi(xcode,Nb,'left-msb');
% Biểu đồ tín hiệu được lượng tử hóa
subplot(3,1,3);
stem(t, xq);
title('Tin hieu da dc lg tu hoa');
xlabel(' t(s)');
ylabel('Bđo');

% In ra mã đầu ra của 5 mẫu đầu tiên
fprintf('Mã đầu ra của 5 mẫu đầu tiên khi luong tu hoa:\n');
disp(xcode(1:5));
fprintf('Mã đầu ra của 5 mẫu bit dc ma hoa tiên:\n');
disp(code(1:5,:));
