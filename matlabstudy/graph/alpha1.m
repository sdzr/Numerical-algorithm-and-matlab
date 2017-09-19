[x,y]=meshgrid([-2:.2:2]);
z=x.*exp(-x.^2-y.^2);
surf(x,y,z,gradient(z));
axis tight
surf(x,y,z,'FaceAlpha','flat','AlphaDataMapping','scaled','AlphaData',gradient(z),'FaceColor','blue');