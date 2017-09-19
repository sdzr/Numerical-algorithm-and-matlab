[x,y]=meshgrid([-2:.25:2]);
z=x.*exp(-x.^2-y.^2);
surf(x,y,z);
Camera Toolbar