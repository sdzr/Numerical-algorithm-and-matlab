% [x,y,z]=cylinder
% [x,y,z]=cylinder(r)     r=半径
% [x,y,z]=cylinder(r,n)  n=在圆周上均匀取点的个数
% cylinder(…)     不带输出变量的时候直接绘制柱状图
 t=0:pi/6:4*pi;
[x,y,z]=cylinder(4+cos(t),30);
surf(x,y,z);
axis square %坐标系的轴长相等
axis equal  %各个方向上度量单位相同
daspect  %设置或查询数据在各坐标轴方向上的显示比率
pbaspect %设置或查询图形包围盒在各方向上显示的比率
xlim %设置或查询x轴方向上的限制
