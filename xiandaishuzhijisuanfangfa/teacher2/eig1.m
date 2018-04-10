n=5;
A=diag(rand(n,1));
C=rand(n,n);
B=orth(C);
A=B'*A*B;
eps=1.0e-8;
[D,its]=qreig(A,eps)