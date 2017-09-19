function [s,T,Y,fty,wch,wucha,P]=RK4(funfcn,fun,t0,b,C,y0,h)
t=t0;y=y0;p=128;i=fix((b-t0)/h);fty=zeros(p,1);
wucha=zeros(p,1);wch=zeros(p,1);T=zeros(p,1);
Y=zeros(p,length(y));s=1;T(s)=t;Y(s,:)=y';
%绘图
clc,t,h,y;
%计算
%fty=fty(:);
for s=2:i+1
    t=t+h;a2=C(5);a3=C(6);a4=C(7);b21=C(8);b31=C(9);
    b32=C(10);b41=C(11);b42=C(12);b43=C(13);c1=C(1);
    c2=C(2);c3=C(3);c4=C(4);t1=t+a2*h;t2=t+a3*h;
    t3=t+a4*h;s1=feval(funfcn,t,y);y1=y+b21*h*s1;
    s2=feval(funfcn,t1,y1);y2=y+b31*h*s1+b32*h*s2;
    s3=feval(funfcn,t2,y2);
    y3=y+b41*h*s1+b42*h*s2+b43*h*s3;
    s4=feval(funfcn,t3,y3);fty(s)=feval(fun,t);
    y=y+h*(c1*s1+c2*s2+c3*s3+c4*s4);
    T(s)=t;Y(s,:)=y;s=s+1;
    plot(T,Y,'rp',T,fty,'bo'),grid
    xlabel('自变量t'),ylabel('因变量y')
    legend('用四阶龙格-库塔方法计算dy/dt=f(t,y),y(t0)=y0在[t0,b]上的解','y/dt=f(t,y),y(t0)=y0的精确解y=f(t)')
end
%计算误差
for s=2:i+1
    wucha(s)=norm(Y(s-1)-Y(s));wch(s)=norm(fty(s)-Y(s));
end
T=T(1:s);Y=Y(1:s,:);fty=fty(1:s,:);
i=1:s;wucha=wucha(1:s,:);
wch=wch(1:s,:);P=[i',T,Y,fty,wch,wucha];
end