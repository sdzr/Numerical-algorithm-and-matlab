%����������H,ʹ��Hx=gy
%xΪ����A����������yΪ������
function [H,rho] = householder(x,y)
rho=-sign(x(1))*norm(x)/norm(y);
y=rho*y;
v=(x-y)/norm(x-y);
I=eye(length(x));
H=I-2*v*(v.');
end

