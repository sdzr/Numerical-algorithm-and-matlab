function [c,s,d] = givens(a,b)
%givens�任������������[a b]',ת����[d 0]'.
%��������a��b������������c��s��d��
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

