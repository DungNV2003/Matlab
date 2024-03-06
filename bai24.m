function [y, delta1, delta2] = bai24(N, a, b, x0, y0, f)
    t = zeros(1, N+1);
    y = zeros(1, N+1);
    t(1) = x0;
    y(1) = y0;
    h = (b - a) / N;
 
    y_lt = @(t) (y0 - 1) * exp(-t) + 1;
    for i = 2:(N+1)
        t(i) = t(i-1) + h;
        y(i) = y(i-1) + h * f(t(i-1), y(i-1)); 
    end
    delta1 = abs(y_lt(1) - y((1/h) + 1));
    delta2 = abs(y_lt(2) - y((2/h) + 1));
end
