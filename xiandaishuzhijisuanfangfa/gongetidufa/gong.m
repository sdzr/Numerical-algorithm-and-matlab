n=20;
B=rand(n);
A=B.'*B;
for i=1:n
    for j=1:n
    A(i,i)=A(i,i)+A(i,j);
    end
end
b=rand(n,1);
x0=rand(n,1);
x1=gongetidufa(A,b,x0,n)
figure(1);
hold on;
y=[1:n];
h1=scatter(y,x1,'*','r');
title('与pcg解得结果对比图');
x2=pcg(A,b)
h2=scatter(y,x2,'.','b');
legend([h1,h2],'本程序结果','pcg结果');
ylabel('x的值');
xlabel('n个数');
hold off;
