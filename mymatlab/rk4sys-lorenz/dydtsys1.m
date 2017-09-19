function dy = dydtsys1(t,y)
dy=[10*(-y(1)+y(2));28*y(1)-y(2)-y(1)*y(3);y(1)*y(2)-8*y(3)/3];
end