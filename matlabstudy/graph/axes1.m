%����һ��axes������������ϵ��Χ���������ӽǣ�axes�������ắ��
ax=axes('Xlim',[-6 6],'Ylim',[-6 6],'Zlim',[-10 10]);
view(3);
%����һ��ͼ
[x,y,z]=peaks(30);
h=surface(x,y,z)
%����һ��hgtransform����
t=hgtransform('Parent',ax);
set(h,'parent',t);
Tz=eye(4);
Sxy=Tz;
Rz=Tz;
%ͼ������2����λ
Tz=makehgtform('translate',0,0,-2);
% set�����ĵ��ø�ʽΪ��
%   set(�����������1������ֵ1��������2������ֵ2����)
set(t,'Matrix',Tz);
%ͼ�ηŴ�2��
Sxy=makehgtform('scale',2);
set(t,'Matrix',Sxy);
%��z����ʱ����ת90��
Rz=makehgtform('zrotate',pi/2);
set(t,'Matrix',Rz);