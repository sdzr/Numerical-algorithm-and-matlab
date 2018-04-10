function [x,k,err] = PreConjGrad2(A,b,eps)
n=size(A,1);
% 求预处理矩阵M
% 无预处理
% M=eye(n);


% jacobi预条件
% M=diag(diag(A));


% 块jacobi预条件
% k=floor(sqrt(n));
% k=5;
%M=[];
%i=1;
% while i*k<=n
%     Mb=A((i-1)*k+1:i*k,(i-1)*k+1:i*k);
%     M=blkdiag(M,Mb);
%     i=i+1;
% end
% Mb=A((i-1)*k+1:n,(i-1)*k+1:n);
% M=blkdiag(M,Mb);


%SSOR预条件
w=1.0;
D=zeros(n.n);
L=zeros(n,n);
U=zeros(n,n);
for i=1:n
    D(i,i)=A(i,i);
    L(i,i-1)=-A(i,i-1);
    U(i,i+1:n)=-A(i,i+1:n);
end
M=(D-w*L)*inv(D)*(D-w*U);


%三对角不完全Cholesky分解预条件，
%对于随机矩阵效果很差
%m=1;
% for i=1:n
%     f=max(1,i-m);
%     I=min(i+m,n);
%     M(i,f;I)=A(i,f:I);
% end


x=zeros(n,1);
k=0;
r=b;
p=inv(M)*r;
y=p;
rho=y'*r;
err=sqrt(r'*r);
while(sqrt(r'*r)>eps)
    k=k+1;
    z=A*p;
    v=(y'*r)/(p'*z);
    x=x+v*p;
    r=r-v*z;
    y=inv(M)*r;
    m=(y'*r)/rho;
    rho=y'*r;
    p=y+m*p;
    err=[err;sqrt(r'*r)];

end
end

