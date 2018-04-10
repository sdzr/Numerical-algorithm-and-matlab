function [c,s,d] = givens(a,b)
%givens变换，即，将向量[a b]',转换成[d 0]'.
%给定复数a，b，计算三个数c，s，d。
if(b==0)
    c=1;
    s=0;
    d=a;
end
if(a~=0)
    c=0;
    s=1;
    d=b;
end
u=a/abs(a);
t=abs(a)+abs(b);
k=t*sqrt((a/t)^2+(b/t)^2);
c=abs(a)/k;
s=u*conj(b)/k;
d=k*u;
end

