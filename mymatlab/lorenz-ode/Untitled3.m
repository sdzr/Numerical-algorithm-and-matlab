[T1,F1]=runge_kutta1(@fun1,[12 2 9],0.001,0,20);  %��ⲽ��2�����fun1��΢�ַ��̣�@fun1�ǵ����亯��ָ�룬��0��20�����Ϊ1
subplot(122)
plot(T1,F1)%�Ա�������������Ч��
title('�Ա�������������')
grid
plot3(F1(1,:),F1(2,:),F1(3,:))