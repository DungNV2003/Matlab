t = 0.5;
tm = linspace(0, t*5, 100);
y = zeros(1, 100);
for i = 1:20
    if(tm(i) <= t/2)
        y(i) = 1;
    elseif(tm(i) > t/2)
        y(i) = 0;
    end
end
plot(tm, y);
