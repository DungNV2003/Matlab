%bai5
%Nguyễn Văn Dũng-B21DCVT146
M=[1 1 1;1 0 1;-1 0 0];
I=eye(3,3);
%Goi Mn là ma tran nghich dao cua M
Mn=I/M;
%de kiem chung ta :
O = Mn- inv(M);
