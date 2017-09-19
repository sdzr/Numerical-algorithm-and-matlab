[T,Y]=ode45(@rigid,[0 20],[12 2 9]);
[T,Y1]=ode45(@rigid,[0 20],[12 2 9.01]);
%figure(1)
%plot(T,Y(:,1))
%figure(2)
%plot(T,Y(:,2))
%figure(3)
%plot(T,Y(:,3))
%figure(4)
%plot3(Y(:,1),Y(:,2),Y(:,3))
%figure(5)
plot3(Y(:,1),Y(:,2),Y(:,3),'r',Y1(:,1),Y1(:,2),Y1(:,3),'b')
view([32 20])