%���ض����������ά����ͼ
ezsurf('sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)',[-6*pi,6*pi]);
view(0,75);


% hading ����������ɫ��Ч���ģ����������֣�
% no shading һ���Ĭ��ģʽ ��shading faceted
% shading flat ��faceted�Ļ�����ȥ��ͼ�ϵ�������
% shading interp ��flat�Ļ����Ͻ���ɫ�ʵĲ�ֵ����ʹɫ��ƽ������
shading flat
shading interp
lightangle(-45,30)
set(gcf,'Renderer','zbuffer')


lighting phong
% ������գ�lighting flat
% lighting gouraud
% lighting phong
% lighting none:ȡ������


material shiny%material�������ò���
material dull
material metal
% material([ka kd ks n sc]):���û����⣬������⣬���淴����ǿ�ȣ�
% �Լ�����Ľ��淴��ָ���;��淴������ɫ
material default

