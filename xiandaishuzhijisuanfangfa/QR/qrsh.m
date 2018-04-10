function [Q,R] =qrsh(A)
m=size(A,1);
n=size(A,2);
R=A;
Q=eye(m);
for j=1:n
    x=R(j:m,j);
    y=zeros(m-j+1,1);
    y(1)=1;
    Ht=householder(x,y);
    H=blkdiag(eye(j-1),Ht);
    Q=Q*H;
    R=H*R;
end
end

