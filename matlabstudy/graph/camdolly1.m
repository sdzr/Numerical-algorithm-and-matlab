%��������ǵ�ͼ
load cape
image(X)

colormap(map);
axis image %ʹ�ݺ�����ͬ
camva(camva/2.5) %�Ŵ�ͼ�β��̶�����ӽ�

%��ginput����ѡ�����Ŀ�������λ�õ�x��y����
while(1)
    [x,y]=ginput(1);
    if ~strcmp(get(gcf,'SelectionType'),'normal')
        break
    end
    ct=camtarget; %���û��ȡ���Ŀ����λ��
    dx=x-ct(1);
    dy=y-ct(2);
    camdolly(dx,dy,ct(3),'movetarget','data') %�ƶ����λ�ú�Ŀ���
    drawnow
end
    