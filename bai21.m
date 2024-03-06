clc; 
clear all; 
close all;
a=input('a= '); % Nhập vào giá trị của a
b=input('b= '); % Nhập vào giá trị của b
fa=a^3/3+4*a^2+a-6; 
fb=b^3/3+4*b^2+b-6; 
while (b-a)>eps*b
    x=(a+b)/2;
    fx=x^3/3 + 4*x*x + x-6;
    if sign(fx)==sign(fa)
        a=x;
        fa=fx;
    else
        b=x;
        fb=fx;
    end;
end
x