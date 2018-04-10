function [x,k] = gmresm(A,b,m,eps)
n=length(b);
e=zeros(m+1,1);
e(1)=1;
x=zeros(n,1);
r=b-A*x;
err=norm(r);
V=r/err;
hj=zeros(m+1,1);
H=[];
y=zeros(m,1);
k=0;
while(err>eps)
    k=k+1;
    for j=1:m
        w=A*V(:,j);
        for i=1:j
            hj(i)=w'*V(:,i);
            w=w-hj(i)*V(:,i);
        end
        hj(j+1)=norm(w);
        V=[V w/hj(j+1)];
        H=[H hj];
    end
    c=err*e;
    %用givens变换求解极小化问题
    for j=1:m
        R=givens(H(:,j),j,j+1);
        H=R*H;
        c=R*c;
    end
    for j=m:-1:1
        y(j)=c(j);
        for k=j+1:m
            y(j)=y(j)-H(j,k)*y(k);
        end
        y(j)=y(j)/H(j,j);
    end
        x=x+V(:,1:m)*y;
        %更新r0和误差，如果误差小于给定要求，结束；
        %否则重新开始。
        r=b-A*x;
        err=norm(r);
        V=r/err;
        hj=zeros(m+1,1);
        H=[];
end 
end

