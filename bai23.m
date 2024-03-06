x = 2;
er = 1;
while er >= 0.0001
y = (x^2+2)/(2*x);
er = abs(y-x);
x = y;
end;
x
