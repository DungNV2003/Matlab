function [t, y, code] = monster_RZ(d, R, Ns, type)
% Hàm chuyển đổi dữ liệu sang tín hiệu RZ (Return to Zero)
% d - chuỗi dữ liệu
% R - tốc độ dữ liệu
% Ns - tổng số mẫu biểu diễn
% t - vector thời gian
% y - vector mẫu đầu ra
% type - kiểu mã (unipolar - 'unipol' hoặc polar - 'pol')

Tb = 1 / R; % chu kỳ bit
Nb = length(d); % số lượng bit
Timewindow = Nb * Tb; % cửa sổ thời gian biểu diễn
ts = Timewindow / (Ns - 1); % chu kỳ lấy mẫu
t = 0:ts:Timewindow*2; % vector thời gian, nhân 2 để phản ánh độ dài tín hiệu RZ
y = zeros(size(t));
code = zeros(size(d));

if nargin <= 3
    type = 'unipol';
end

for k = 1:Ns
    n = fix(t(k) / Tb) + 1;
    if n >= Nb
        n = Nb;
    end
    switch (type)
        case 'unipol'
            if d(n) == 1
                y(k) = 1;
            else
                y(k) = 0;
            end
            code(n) = d(n);
        case 'pol'
            y(k) = 2 * d(n) - 1;
            code(n) = 2 * d(n) - 1;
    end
end

% Chuyển đổi sang tín hiệu RZ
y_RZ = zeros(size(y));
for i = 1:Ns
    if y(i) == 1
        y_RZ((i-1)*2+1:i*2) = [1 0]; % Tạo xung trong 1 nửa chu kỳ
    end
end

% Cập nhật tín hiệu đầu ra
y = y_RZ;

end
