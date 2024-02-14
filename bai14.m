%bai14
% NGUYỄN VĂN DŨNG- B21DCVT146
w = (0.01:0.01:5);
H1 = 1./(j*w); 
H2 = 1./ (1 + j*w);
subplot(2,2,1)
plot(w, abs(H1)); % Vẽ đồ thị biên độ hàm truyền H1
xlabel('W(rad/s)');
ylabel('Biên độ H1');
title('Do thi bien do cua ham H1');
subplot(2,2,2)
plot(w, angle(H1)); % Vẽ đồ thị pha hàm truyền H1
xlabel('W(rad/s)');
ylabel('Biên độ pha H1');
title('Do thi pha cua ham H1');
subplot(2,2,3)
plot(w,abs(H2)); % Vẽ đồ thị biên độ hàm truyền H2
xlabel('W(rad/s)');
ylabel('Biên độ H2');
title('Do thi bien do cua ham H2');
subplot(2,2,4)
plot(w,angle(H2)); % Vẽ đồ thị pha hàm truyền H2
xlabel('W(rad/s)');
ylabel('Biên độ pha H2');
title('Do thi pha cua ham H2');
