function [t, y, delta1, delta2] = eulerbiendoi(N, h, a, b, t0, y0, f)
    % h = 0.25;
    % y0 = 0;
    % f = @(t,y) 1- 1*y;
    y_lt = @(t) (- 1)*exp(-t) + 1;    
    t = zeros(1, N+1);  
    y = zeros(1, N+1);
    t(1) = t0;
    y(1) = y0;
    y1 = zeros(1, N); % 
    for i = 1:N
        t(i+1) = t(i) + h;
        y1(i+1) = y(i) + h * f(t(i), y(i));
        y(i+1) = y(i) + h/2 * (f(t(i), y(i)) + f(t(i+1), y1(i+1)));
    end

    delta1 = abs(y_lt(1) - y(1/h+1));
    delta2 = abs(y_lt(2) - y(2/h+1));
end
