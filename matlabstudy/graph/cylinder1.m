% [x,y,z]=cylinder
% [x,y,z]=cylinder(r)     r=�뾶
% [x,y,z]=cylinder(r,n)  n=��Բ���Ͼ���ȡ��ĸ���
% cylinder(��)     �������������ʱ��ֱ�ӻ�����״ͼ
 t=0:pi/6:4*pi;
[x,y,z]=cylinder(4+cos(t),30);
surf(x,y,z);
axis square %����ϵ���᳤���
axis equal  %���������϶�����λ��ͬ
daspect  %���û��ѯ�����ڸ������᷽���ϵ���ʾ����
pbaspect %���û��ѯͼ�ΰ�Χ���ڸ���������ʾ�ı���
xlim %���û��ѯx�᷽���ϵ�����
