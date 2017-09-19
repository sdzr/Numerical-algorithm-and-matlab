function [t,y]=rk4(dydt,a,b,y0,h)
n=floor((b-a)/h);
y(:,1)=y0;
t(1)=a;
for i=1:n
    t(i+1)=t(i)+h;
    k1=dydt(t(i),y(:,i));
    k2=dydt(t(i)+1/2*h,y(:,i)+1/2*h*k1);
    k3=dydt(t(i)+1/2*h,y(:,i)+1/2*h*k2);
    k4=dydt(t(i)+h,y(:,i)+k3*h);
    y(:,i+1)=y(:,i)+1/6*(k1+2*k2+2*k3+k4)*h;
end
end 