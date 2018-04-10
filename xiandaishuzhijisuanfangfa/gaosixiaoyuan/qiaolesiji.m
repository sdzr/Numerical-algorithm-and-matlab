%注意次程序的分解写错了。
n=10;%假定生成5阶单位矩阵
B=rand(n,n);
A=B.'*B;
for i=1:n
    A(i,i)=sum(A(1:n,i));
end
B=A;
L=zeros(n);
U=zeros(n);
for i=1:n
    A(i,i)=sqrt(A(i,i));
end
for i=1:n-1
    A(i+1:n,i)=A(i+1:n,i)/A(i,i);
    A(i+1:n,i+1:n)=A(i+1:n,i+1:n)-A(i+1:n,i)*A(i,i+1:n);
end
for i=1:n-1
    L(i+1:n,i)=A(i+1:n,i);
end
for i=1:n
    L(i,i)=A(i,i);
end
L*(L.');
b=rand(n,1);
b=B.'*b;
y(1)=b(1)/L(1,1);
for i=2:n
    y(i)=b(i)/L(i,i)-dot(L(i,1:i-1),y(1:i-1))/L(i,i);
end
U=L.';
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
    x(i)=y(i)/U(i,i)-dot(U(i,i+1:n),x(i+1:n))/U(i,i);
end
x;
    