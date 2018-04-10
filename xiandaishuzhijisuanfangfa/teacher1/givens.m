function [R,y] =givens(x,i,j)
%求解标准正交的Givens变换矩阵R，使Rx=y，其中
% y(j)=0;
% y(i)=sqrt(x(i)^2+x(j)^2);
xi=x(i);
xj=x(j);
%y=x;
%r=sqrt(xi^2+xj^2);
%cost=xi=xi/r;
%sint=xj=xj/r;
%R=eye(length(x));
%R(i,i)=cost;
%R(i,j)=sint;
%R(j,i)=-sint;
%R(j,j)=cost;
%y(i)=0;
%y(i)=sqrt(x(i)^2+x(j)^2);
if xj==0
    c=1;
    s=0;
else
    if(abs(xj)>abs(xi))
        t=-xi/xj;
        s=1/sqrt(1+t^2);
        c=s*t;
    else
        t=-xj/xi;
        c=1/sqrt(1+t^2);
        s=c*t;
    end
end
y=x(:);
y(i)=c*xi-s*xj;
y(j)=s*xi+c*xj;
R=eye(length(x));
R(i,i)=c;
R(i,j)=-s;
R(j,i)=s;
R(j,j)=c;
end

