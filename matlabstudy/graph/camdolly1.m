%载入好望角地图
load cape
image(X)

colormap(map);
axis image %使纵横轴相同
camva(camva/2.5) %放大图形并固定相机视角

%用ginput函数选择相机目标点和相机位置的x和y坐标
while(1)
    [x,y]=ginput(1);
    if ~strcmp(get(gcf,'SelectionType'),'normal')
        break
    end
    ct=camtarget; %设置或获取相机目标点的位置
    dx=x-ct(1);
    dy=y-ct(2);
    camdolly(dx,dy,ct(3),'movetarget','data') %移动相机位置和目标点
    drawnow
end
    