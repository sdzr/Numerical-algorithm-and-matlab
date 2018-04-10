h=0.4;
pi=3.1415926535;
y=[-10:h:10];
b=sin(pi*y/5)+y/5;
 for N=1:3:19;
figure(1);
hold on;
scatter(y,b,'o');
plot(y,b);
p=polyfit(y,b,N);
f=p(1);
for i=1:N
    f=f.*y+p(i+1);
end
plot(y,f,'r');
figure(2);
hold on;
c=b-f;
l=norm(c);
scatter(N,l,'*');
 end
