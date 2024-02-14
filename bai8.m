C=[1 2 3 4 10;-22 1 11 -12 4;8 1 6 -11 5;18 1 11 6 4]
E=(C <=10)&(C>= -10); %tao matran nhu de yeu cau tra ve 0,1
F=C.*E; % đe loc ra cac thanh phan trong matran thoa man yeu cau <10,>-10
y=linespace(1,2,5);