[x,y,z]=meshgrid(-1.25:.1:-.25,-2:.2:2,-2:.1:2);
v=x.*exp(-x.^2-y.^2-z.^2);
h=slice(x,y,z,v,[-1,-.75,-.5],[],[0]);
alpha('color');
set(h,'EdgeColor','none','FaceColor','interp','FaceAlpha','interp');
% interp:差值着色
% 功能 立体切片图。该命令显示通过立体图形的矩形切片图。
% 用法 slice(X,Y,Z,V,sx,sy,sz) 显示三元函数V=V(X,Y,Z)确定的超立体形在x-轴、y-轴与z-轴方向上的若干点（对应若干平面。即若函数V=V(X,Y,Z)中有一变量如X取一定值X0，则函数V=V(X0,Y,Z)变成一立体曲面（只不过是将该曲面通过颜色表示高度V,从而显示于一平面而已。）的切片图，各点的坐标由参量向量sx、sy与sz指定。参量X、参量Y与参量Z为三维数组，用于指定立方体V的坐标。参量X、Y与Z必须有单调的、正交的间隔（如同用命令meshgrid生成的一样）。在每一点上的颜色由对超立体 V的三维内插值确定。
% slice(V,sx,sy,sz) 显示三元函数V=V(X,Y,Z)确定的超立体形在x-轴、y-轴与z-轴方向上的若干点（对应若干平面）的切片图，各点的坐标由数量向量sx、sy与sz指定。其中V为三维数组（阶数为m*n*p），缺省地有：X = 1:m、Y = 1:n、Z = 1:p。
% slice(V,XI,YI,ZI) 显示参量矩阵XI、YI与ZI确定的、超立体图形的切面图。参量XI、YI与ZI定义了一曲面，同时会在曲面的点上计算超立体V的值。参量XI、YI与ZI必须为同型矩阵。
% slice(X,Y,Z,V,XI,YI,ZI) 沿着由矩阵XI、YI与ZI定义的曲面画穿过超立体图形V的切片。
alphamap('rampdown')
alphamap('increase',.5)
colormap(hsv)

