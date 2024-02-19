% Bài 17
y =(1:0.5:5);% Tạo véc tơ y
L=length(y);% Chiều dài của véc tơ y
k=0;
disp('vecto yr la : ')
for i=1:L
 yz(i)= y(L-i+1);% Đảo ngược vec tơ y ta được véc tơ yr
end;
for i=1:L
if (rem(y(i),1)==0)
 k= k+1;
z(k)=y(i);
end
end
disp('vecto chua cac so nguyen trong y : ')
z
