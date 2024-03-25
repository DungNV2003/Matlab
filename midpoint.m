a=4;
b=6;
h=(b-a)/(100*24);
tp=0;
f=@(x)(exp(x)*atan(x^2))/cos(x)
for i=1:24*100
    xi=a+(i-1/2)*h;
    tp=tp+f(xi);
end;
tp=tp*h;