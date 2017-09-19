function [t,y]=rk5sys(dydt,a,b,y0,h)
%t=(tspan(1):h:tspan(2));
y(:,1)=y0;
%n=length(t);
n=floor((b-a)/h);
t(1)=a;
for i=1:n
    t(i+1)=t(i)+h;
    k1=dydt(t(i),y(:,i));
    k2=dydt(t(i)+1/4*h,y(:,i)+1/4*h*k1);
    k3=dydt(t(i)+1/4*h,y(:,i)+1/8*h*k1+1/8*h*k2);
    k4=dydt(t(i)+1/2*h,y(:,i)-1/2*h*k2+h*k3);
    k5=dydt(t(i)+3/4*h,y(:,i)+3/16*h*k1+9/16*h*k4);
    k6=dydt(t(i)+h,y(:,i)-3/7*h*k1+2/7*h*k2+12/7*h*k3-12/7*h*k4+8/7*h*k5);
    y(:,i+1)=y(:,i)+1/90*(7*k1+32*k3+12*k4+32*k5+7*k6)*h;
end
end