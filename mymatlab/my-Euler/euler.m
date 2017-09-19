function euler()
h=0.5;
t0=0;
tn=4;
y0=2;
y(1)=y0;
y3(1)=y0;
t=(t0:h:tn);
n=length(t);
for i=1:n-1
    f1=4*exp(0.8*t(i))-0.5*y(i);
    y(i+1)=y(i)+f1*h;
    f2=4*exp(0.8*t(i+1))-0.5*y(i+1);
    y(i+1)=y(i)+(f1+f2)/2*h;
end
y2=2*log10(5/2*exp(4/5*t)+exp(1)-5/2);
for i=1:n-1
    f3=4*exp(0.8*t(i))-0.5*y3(i);
    y3(i+1)=y3(i)+f3*h;
end
plot(t,y,'k-*',t,y2,'b-x',t,y3,'r-o');
y3
y
y2
end