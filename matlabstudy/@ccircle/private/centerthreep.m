function [x0,y0] = centerthreep( x1,y1,x2,y2,x3,y3 )
%����Բ��������Բ������
a1=x2-x3;
b1=y2-y3;
a2=x2-x3;
b2=y2-y3;
c1=(x1*x2-x3*x3+y1*y2-y3*y3)/2;
c2=(x2*x2-x3*x3+y2*y2-y3*y3)/2;
d=a1*b2-a2*b1;
if(d==0)
    error('�Ҳ���Բ��');
else
    x0=(c1*b2-c2*b1)/d;
    y0=(a1*c2-a2*c1)/d;
end

