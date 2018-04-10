function [w,y] = house(a)
%从《矩阵计算六讲》摘的Housholder变换
%给定一个非零向量a，计算一个向量w和一个数y，使得H*a=y*e1，
%其中H=I-ww'，norm(w,2)=sqrt(2);
%即，是向量a中只有一个元素不为0.
w=a;
y=norm(a,2);
if(y==0)
    w(1)=sqrt(2);
end
if(w(1)~=0)
    s=conj(w(1))/abs(w(1));
else
    s=1;
end
w=(s/y)*w;
w(1)=w(1)+1;
w=w/sqrt(w(1));
y=-conj(s)*y;
end

