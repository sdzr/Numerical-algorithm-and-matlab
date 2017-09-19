function dy=dydtsys(t,y)
dy = [y(2);9.81-0.25/68.1*y(2)^2];
end