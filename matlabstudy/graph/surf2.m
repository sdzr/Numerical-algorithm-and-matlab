z=peaks(25);
c(:,:,1)=rand(25);
c(:,:,2)=rand(25);
c(:,:,3)=rand(25);
%surf(z,c)
surf(z,c,'FaceColor','interp','FaceLighting','phong')
camlight right%ตฦนโ