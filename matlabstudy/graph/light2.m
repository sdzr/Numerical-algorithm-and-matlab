%在特定区间绘制三维曲面图
ezsurf('sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)',[-6*pi,6*pi]);
view(0,75);


% hading 是用来处理色彩效果的，分以下三种：
% no shading 一般的默认模式 即shading faceted
% shading flat 在faceted的基础上去掉图上的网格线
% shading interp 在flat的基础上进行色彩的插值处理，使色彩平滑过渡
shading flat
shading interp
lightangle(-45,30)
set(gcf,'Renderer','zbuffer')


lighting phong
% 刻面光照：lighting flat
% lighting gouraud
% lighting phong
% lighting none:取消光照


material shiny%material函数设置材质
material dull
material metal
% material([ka kd ks n sc]):设置环境光，漫反射光，镜面反射光的强度，
% 以及对象的进面反射指数和镜面反射光的颜色
material default

