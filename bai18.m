% Định nghĩa cấu trúc 'color' với các trường dữ liệu red, blue và green
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

% Hiển thị thông tin của các cấu trúc trong colorArray
disp('Thông tin của colorArray:');
for i = 1:20
    disp(['Phần tử ', num2str(i), ':']);
    disp(['Red: ', colorArray(i).red]);
    disp(['Blue: ', colorArray(i).blue]);
    disp(['Green: ', num2str(colorArray(i).green)]);
    disp('------------------');
end
