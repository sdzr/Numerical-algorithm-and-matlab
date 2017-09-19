X=imread('qqshow_290701331.jpg');
for k=1:140
    X2(k,:,:)=X(141-k,:,:);
end
sphere;
h=findobj('Type','surface');
set(h,'CData',X2,'FaceColor','texturemap')
% colormap(map);
% axis equel
% view([90 0])
% set(gca,'CameraViewAngleModel','manual')
% View([30 190])
% axis vis3d off