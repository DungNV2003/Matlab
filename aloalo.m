function [t,y] = aloalo(Tw,Rp,Ns,Np)
% Chuong trinh vi du tao chuoi xung vuong
% Tw – độ rộng xung
% Rp – tốc độ lặp xung
% Ns – số luợng mẫu
% Np – số luợng xung cần biểu diễn
% t – vector thời gian
% y – vector mẫu đầu ra
Tp = 1/Rp; % pulse period
Timewindow = Np*Tp; % time window
ts = Timewindow/(Ns-1); % sampling time
t = 0:ts:Timewindow; % time vector
Nsp = round(Tp/ts); % number of samples within Tp

y = zeros(size(t));
for k = 1:Ns
 if mod(t(k),Nsp*ts) <= Tw
 y(k) = 1;
 else
 y(k) = 0;
 end
end