%创建一个axes对象，设置坐标系范围，并调整视角，axes：坐标轴函数
ax=axes('Xlim',[-6 6],'Ylim',[-6 6],'Zlim',[-10 10]);
view(3);
%画出一个图
[x,y,z]=peaks(30);
h=surface(x,y,z)
%创建一个hgtransform对象
t=hgtransform('Parent',ax);
set(h,'parent',t);
Tz=eye(4);
Sxy=Tz;
Rz=Tz;
%图形下移2个单位
Tz=makehgtform('translate',0,0,-2);
% set函数的调用格式为：
%   set(句柄，属性名1，属性值1，属性名2，属性值2，…)
set(t,'Matrix',Tz);
%图形放大2倍
Sxy=makehgtform('scale',2);
set(t,'Matrix',Sxy);
%绕z轴逆时针旋转90度
Rz=makehgtform('zrotate',pi/2);
set(t,'Matrix',Rz);