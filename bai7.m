% NGUYỄN VĂN DŨNG-B21DCVT146
%BÀI 7:
x=[1 -3 3 14 -10 12];% tao vector x
y=[ 12 6 0 -1 -10 2]; % tao vector y

AND=and (x,y); % tao ra vetor AND quan he x và y, tra ve gia tri 0,1

OR = or(x,y) ; % tao ra vecto OR x và y tra ve gia tri 0,1

so_sanh_1=x>y; % tao vector quan he phep so sanh x > y tra ve gia tri 1,0x > y
so_sanh_2 = x < y % tao vector quan he phep ss x < y tra ve gia tri 1,0 x < y
so_sanh_3 = x ==y ; % tao vector phep ss x = y tra ve gia tri 1,0 x = y
k=x(so_sanh_3); % loc ra gia tri trong x thoa man 