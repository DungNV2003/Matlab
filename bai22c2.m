a=-1.5;
b=1.5;
N=100;
h = (b-a)/N;
tp=0;
for k=1:N
 x = a+(k-1/2)*h;
 F = 4*x^3*2*exp(x)*cos(x);
 tp=tp+F;
end
tp = tp*h;
disp('Gia trị tich phan tinh theo phuong phap mid point la: ')
tp
