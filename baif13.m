%bai13
% NGUYỄN VĂN DŨNG- B21DCVT146
w = 0.01:0.01:5;
H1 = 1./(1j*w);
H2 = 1./(1+1j*w);

% Vẽ đồ thị của H1 trên cửa sổ 1
figure('Name', 'Biên độ H1');

subplot(2,2,1);
plot(w, abs(H1));
xlabel('W(rad/s)');
ylabel('Biên độ H1');

subplot(2,2,2);
semilogx(w, abs(H1));
xlabel('W(rad/s)');
ylabel('Biên độ H1');

subplot(2,2,3);
semilogy(w, abs(H1));
xlabel('W(rad/s)');
ylabel('Biên độ H1');

subplot(2,2,4);
loglog(w, abs(H1));
xlabel('W(rad/s)');
ylabel('Biên độ H1');

% Vẽ đồ thị của H2 trên cửa sổ 2
figure('Name', 'Biên độ H2');

subplot(2,2,1);
plot(w, abs(H2));
xlabel('W(rad/s)');
ylabel('Biên độ H2');

subplot(2,2,2);
semilogx(w, abs(H2));
xlabel('W(rad/s)');
ylabel('Biên độ H2');

subplot(2,2,3);
semilogy(w, abs(H2));
xlabel('W(rad/s)');
ylabel('Biên độ H2');

subplot(2,2,4);
loglog(w, abs(H2));
xlabel('W(rad/s)');
ylabel('Biên độ H2');

