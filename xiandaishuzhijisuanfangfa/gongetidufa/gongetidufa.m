function [x] = gongetidufa(A,b,x0,n)
x=x0;
r=b-A*x;
if r==0
    x;
else
 p=r;
 a=(r.'*p)/(p.'*A*p);
 x=x+a*p;
 r=b-A*x;
 k=2;
 l=10^(-10);
 while(norm(r)>l)
 m=(r.'*A*p)/(p.'*A*p);
 p=r+m*p;    
 a=(r.'*p)/(p.'*A*p);
 x=x+a*p;
 r=b-A*x;
 k=k+1;
 end
end
end

