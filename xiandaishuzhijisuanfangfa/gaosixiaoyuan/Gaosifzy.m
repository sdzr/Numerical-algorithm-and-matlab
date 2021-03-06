%验证时注意：矩阵A在程序中有变动。
n=10;
A=rand(n);
for i=1:n
    A(i,i)=sum(A(1:n,i));
end
for i=1:n-1
    A(i+1:n,i)=A(i+1:n,i)/A(i,i);
    A(i+1:n,i+1:n)=A(i+1:n,i+1:n)-A(i+1:n,i)*A(i,i+1:n);
end
L=zeros(n,n);
for i=1:n
    L(i,i)=1;
end
for i=1:n-1
    L(i+1:n,i)=A(i+1:n,i);
end
U=A-L+eye(n);
b=rand(n,1)
y(1)=b(1)/L(1,1);
for i=2:n
    y(i)=b(i)/L(i,i)-dot(L(i,1:i-1),y(1:i-1))/L(i,i);
end
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
    x(i)=y(i)/U(i,i)-dot(U(i,i+1:n),x(i+1:n))/U(i,i);
end
x;
    