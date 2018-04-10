function H= hessenberg(A)
%给定一个矩阵A(nxn的)，计算一个U矩阵和一个上hessenberg矩阵H，使得（U*）AU=H。
%上hessenberg化，进行QR分解时，可以减少迭代次数。
%取自《矩阵六讲》第12页。
H=A;
n=size(A);
U=zeros(n,n);
for k=1:n-2
    [w,y]=house(H(k+1:n,k));
    U(k+1:n,k)=w;
    v=w'*H(k+1:n,k:n);
    v=v';
    H(k+1:n,k:n)=H(k+1:n,k:n)-w*v';
    v=H(1:n,k+1:n)*w;
    H(1:n,k+1:n)=H(1:n,k+1:n)-v*w';
end
    e=eye(n);%生成单位矩阵。
    U(:,n)=e(:,n);
    U(:,n-1)=e(:,n-1);
    for k=n-2:-1:1
        w=U(k+1:n,k);
        v=w'*U(k+1:n,k+1:n);
        v=v';
        U(k+1:n,k+1:n)=U(k+1:n,k+1:n)-w*v';
        U(:,k)=e(:,k);
    end
end

