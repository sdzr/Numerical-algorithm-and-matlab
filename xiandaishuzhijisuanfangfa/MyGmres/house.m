function [w,y] = house(a)
%�ӡ��������������ժ��Housholder�任
%����һ����������a������һ������w��һ����y��ʹ��H*a=y*e1��
%����H=I-ww'��norm(w,2)=sqrt(2);
%����������a��ֻ��һ��Ԫ�ز�Ϊ0.
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

