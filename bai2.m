%Nguyễn Văn Dũng-B21DCVT146
M = [1 0 0; 0 j 1; j j+1 -3];
V = [M M; M M];
Tem=V;
V(2, :) = [];
V(:, 3) = [];
Z = V(4, :);
V(4, 2) = j + 5;