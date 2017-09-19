function dx=fun1(t,x)
dx = zeros(3,1);
dx(1)=10*(-x(1)+x(2));
dx(2)=28*x(1)-x(2)-x(1)*x(3);
dx(3)=x(1)*x(2)-8/3*x(3);
end

