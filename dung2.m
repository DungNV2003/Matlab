clear all;
close all;

a = -1;
b = 3;
f = @(x) (x^3)/3 + 4*(x^2) + x - 6;

x1 = 0;
x2 = 3;

if abs(f(x1)) <= 1e-4
    no = x1;
elseif abs(f(x2)) <= 1e-4
    no = x2;
else
    while (b - a) / b > 1e-4
        x0 = (a + b) / 2;
        if abs(f(x0)) < 1e-4
            break;
        elseif f(x0) * f(a) > 0
            a = x0;
        else
            b = x0;
        end
    end
    no = x0;
end

disp(no);
