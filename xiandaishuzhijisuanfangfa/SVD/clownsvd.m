load clown.mat;
[U,S,V]=svd(X);
colormap('summer');%spring,cool,gray,flag,summer
k=150;
image(U(:,1:k)*S(1:k,1:k)*V(:,1:k)');
% imshow与image的用法分析
% 相同点：
% imshow与image都会产生一个image对象。
% 区别如下：
% 1.imshow的两种用法：
% 1）imshow(路径与文件名字符串)
% 2）imshow(图像矩阵)
% 若当前figure存在坐标轴，imshow会将产生的image对象（即图像对象）显示在当前坐标轴内；
% 若当前figure不存在坐标轴，imshow会产生一个隐藏的坐标轴，并将产生的image对象显示于其中；
% 2.imshow(路径与文件名字符串)等价于：M=imread(路径与文件名字符串);imshow(M);
% 3.imshow不会扩展填充图像数据，即不会拉伸图像使其铺满坐标轴，而是改变坐标轴宽高比使其适应图像数据；
% 4.image的用法：
% M=imread(路径与文件名字符串);image(M);
% 5.image不会改变坐标轴的大小尺寸，而是扩展填充图像矩阵，使其铺满坐标轴区域。