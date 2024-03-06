function [x] = bai21c1(a, b,f)
    eps = 1e-6; % Giả sử epsilon là một giá trị rất nhỏ
    fa = f(a); % Tính giá trị của f tại điểm a
    fb = f(b); % Tính giá trị của f tại điểm b

    while (b - a) > eps * b
        x = (a + b) / 2;
        fx = f(x);

        if sign(fx) == sign(fa)
            a = x;
            fa = fx;
        else
            b = x;
            fb = fx; 
        end
    end
      
end
