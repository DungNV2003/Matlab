w = (0.01:0.01:5);% Véc tơ tần số, đơn vị là rad/s
H1 = 1./(j*w);%Hàm truyền của một bộ tích phân
H2 = 1./ (1 + j*w);%Hàm truyền của một phần tử trễ thời gian bậc 1
plot(w, abs(H1));% Vẽ đồ thị biên độ hàm truyền H1
title('Do thi bien do cua ham H1');
figure
plot(w,abs(H2));% Vẽ đồ thị biên độ hàm truyền H2 sang một hình khác
title('Do thi bien do cua ham H2');
figure
semilogx(w, abs(H1)); % Vẽ đồ thị biên độ H1 theo hàm semilogx 
title('Do thi bien do của ham H1 khi su dung semilogx ');
figure
semilogy(w,abs(H1));% Vẽ đồ thị biên độ H1 theo hàm semilogy 
title('Do thi bien do của ham H1 khi su dung semilogy ');
figure
loglog(w,abs(H1)); % Vẽ đồ thị biên độ H1 theo hàm loglog 
title('Do thi bien do của ham H1 khi su dung loglog ');
