[x,y]=meshgrid([-2:0.1:2]);
z=x.*exp(-x.^2-y.^2);
surf(x,y,z,gradient(z))
colorbar
%gradient（z）：取z的梯度的函数
%meshgrrid：在xy平面上采点。
%colorbar：图旁边搞个颜色条
