function [x] = bai21c2(a, b)
    f = @(x)x^3/3 + 4*x*x + x-6;
    er = 1;
    while abs(er) > 1e-6
        x0 = (a + b) / 2;
        if f(x0) * f(a) > 0
            a = x0;
        else
            b = x0;
        end
        er = (b - a) / b;
    end
    x = x0;
end


