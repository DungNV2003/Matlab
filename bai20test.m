function [chu_vi, dien_tich] = circle_prog()
    % Bán kính của đường tròn
    r = 3;
    
    % Vẽ hình tròn
    center = [0, 0]; % Tọa độ tâm
    viscircles(center, r);
    axis equal; % Đảm bảo tỷ lệ trục x và y là bằng nhau
    
    % Tính chu vi và diện tích
    chu_vi = 2 * pi * r;
    dien_tich = pi * r^2;
    
    % Hiển thị chu vi và diện tích
    fprintf('Chu vi của đường tròn là: %.2f\n', chu_vi);
    fprintf('Diện tích của đường tròn là: %.2f\n', dien_tich);
end
