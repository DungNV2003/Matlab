color.red = '';
color.blue = '';
color.green = [];
% Định nghĩa một trường 1x20 của các cấu trúc kiểu 'color'
colorArray(1, 20) = struct('red', '', 'blue', '', 'green', []);

% Khởi tạo thành phần red bằng giá trị 'yes', thành phần blue bằng giá trị 'no'
% và thành phần green với giá trị [0, 256, 0] trong mỗi cấu trúc trong colorArray
for i = 1:20
    colorArray(i).red = 'yes';
    colorArray(i).blue = 'no';
    colorArray(i).green = [0, 256, 0];
end

for i = 1:20
    disp(['Phần tử ', num2str(i), ':']);
    disp(['Red: ', colorArray(i).red]);
    disp(['Blue: ', colorArray(i).blue]);
    disp(['Green: ', num2str(colorArray(i).green)]);
    disp('------------------');
end