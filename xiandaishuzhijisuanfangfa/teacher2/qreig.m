function [D,its] = qreig(A,eps)
n=size(A,1);
D=A;
err=1.0;
its=0;
while(err>eps)
    its=its+1;
    [Q,R]=qr(D);
    D=R*Q;
    err=norm(tril(D,-1),'fro');
end
end

