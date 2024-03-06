function x = dung1()
a = input('a= ');
b = input('b= ');
f = @(x) x.^2 - 2;
er = 1;
while abs(er) > 1e-4
    x0 = (a + b) / 2;
    if f(x0) * f(a) > 0
        a = x0;
    else
        b = x0;
    end
    er = (b - a) / b;
end
disp('Nghiem phuong trinh la: ');
disp(x0);
x = x0; % Return the value of x0
end
