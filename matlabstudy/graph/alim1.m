[x y z v]=flow;

% l.  isosurface ��ֵ�溯��
% ���ø�ʽ��fv = isosurface(X,Y,Z,V,isovalue)
% ���ã�����ĳ����ֵ�棨��isovalueָ�����ı��棨faces���Ͷ��㣨vertices�����ݣ�
%       ����ڽṹ��fv�У�fv��vertices��faces�����򹹳ɣ���
%       ����ǻ������� v = f(x,y,z) = 0 ����άͼ�Σ���ô��ֵ�����ֵΪisovalue = 0��
% 2.  patch����
% ���ø�ʽ��patch(X,Y,C) ��ƽ������(X, Y)Ϊ���㣬����ƽ�����Σ�C��RGB��ɫ����
%                     patch(X,Y,Z,C)�Կռ�3-D����(X, Y,Z)Ϊ���㣬����ռ�3D���棬C��RGB��ɫ����
%                     patch(fv) ͨ������vertices��faces������Ľṹ��fv������3D���棬fv����ֱ���ɵ�ֵ�溯��isosurface�õ�
% ���磺patch(isosurface(X,Y,Z,V,0))
% 
% 3.  isonormals��ֵ�淨�ߺ���
% ���ø�ʽ��isonormals(X,Y,Z,V,p)
% ʵ�ֹ��ܣ������ֵ��V�Ķ��㷨�ߣ���patch����p�ķ�������Ϊ����õ��ķ��ߣ�p��patch���صõ��ľ������
%          ��������÷��ߵĻ����õ������ڹ��ɵش����������ܲ��Ǻܹ⻬

p=patch(isosurface(x,y,z,v,-3));
isonormals(x,y,z,v,p);
set(p,'facecolor','red','edgecolor','none');
daspect([1 1 1]);%daspect([1 1 1])������������ĳ����֮�ȵ���1��
                  %axis equal�ǽ�������ĳ��ȵ�λ������
view(3);
axis tight %axis tight��ʹ����ϵ�����ֵ����Сֵ��������ݷ�Χһ�£�
grid on  %�������
camlight %��������λ�ô������ƶ�һ�����ն��󣬼����һ����Դ��
lighting phong
alpha(0.5);%����͸����
