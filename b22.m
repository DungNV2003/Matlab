function[tp]=b22(N,f,a,b)
h=(b-a)/N;

tp=0;
for k=1:N
     x=a+(k-1/2)*h;
    tp=tp+f(x);
   % f=4*x^3*2*exp(x)*cos(x);
end
tp=tp*h;
end

