n=10;
A=rand(n,n);
for i=1:n
    A(i,i)=sum(A(:,i));
end
res=rand(n,1);
b=A*res;
eps=1.0e-8;
x=gmresm(A,b,5,eps)