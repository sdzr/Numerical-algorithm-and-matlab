[x,y]=meshgrid([-2:0.1:2]);
z=x.*exp(-x.^2-y.^2);
surf(x,y,z,gradient(z))
colorbar
%gradient��z����ȡz���ݶȵĺ���
%meshgrrid����xyƽ���ϲɵ㡣
%colorbar��ͼ�Ա߸����ɫ��
