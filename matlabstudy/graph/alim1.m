[x y z v]=flow;

% l.  isosurface 等值面函数
% 调用格式：fv = isosurface(X,Y,Z,V,isovalue)
% 作用：返回某个等值面（由isovalue指定）的表面（faces）和顶点（vertices）数据，
%       存放在结构体fv中（fv由vertices、faces两个域构成）。
%       如果是画隐函数 v = f(x,y,z) = 0 的三维图形，那么等值面的数值为isovalue = 0。
% 2.  patch函数
% 调用格式：patch(X,Y,C) 以平面坐标(X, Y)为顶点，构造平面多边形，C是RGB颜色向量
%                     patch(X,Y,Z,C)以空间3-D坐标(X, Y,Z)为顶点，构造空间3D曲面，C是RGB颜色向量
%                     patch(fv) 通过包含vertices、faces两个域的结构体fv来构造3D曲面，fv可以直接由等值面函数isosurface得到
% 例如：patch(isosurface(X,Y,Z,V,0))
% 
% 3.  isonormals等值面法线函数
% 调用格式：isonormals(X,Y,Z,V,p)
% 实现功能：计算等值面V的顶点法线，将patch曲面p的法线设置为计算得到的法线（p是patch返回得到的句柄）。
%          如果不设置法线的话，得到曲面在过渡地带看起来可能不是很光滑

p=patch(isosurface(x,y,z,v,-3));
isonormals(x,y,z,v,p);
set(p,'facecolor','red','edgecolor','none');
daspect([1 1 1]);%daspect([1 1 1])是设置坐标轴的长宽高之比等于1，
                  %axis equal是将坐标轴的长度单位设成相等
view(3);
axis tight %axis tight是使坐标系的最大值和最小值和你的数据范围一致！
grid on  %添加网格
camlight %相对于相机位置创建或移动一个光照对象，即添加一个光源。
lighting phong
alpha(0.5);%设置透明度
