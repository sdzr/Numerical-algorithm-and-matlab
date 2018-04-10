%求正交矩阵H,使得Hx=gy
%x为矩阵A的列向量，y为列向量
function [H,rho] = householder(x,y)
rho=-sign(x(1))*norm(x)/norm(y);
y=rho*y;
v=(x-y)/norm(x-y);
I=eye(length(x));
H=I-2*v*(v.');
end

