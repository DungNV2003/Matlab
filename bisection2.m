a=1;
b=4;
fa=4*a^3-13*a^2+13*a-10;
fb=4*b^3-13*b^2+13*b-10;
f=@(x)4*x^3-13*x^2+13*x-10; % Sửa cú pháp ở đây
esp=10^-6;
if(sign(fa)==sign(fb))
    disp('ptvonghiem');
    
end;
while(b-a>esp)
    x=(a+b)/2;
    if(sign(f(x))==sign(fa)) % Sửa cú pháp và logic ở đây
        a=x;
        fa=f(x);
    elseif(sign(f(x))==sign(fb)) % Sửa logic ở đây
         b=x;
        fb=f(x);
    end;
end;
x;
