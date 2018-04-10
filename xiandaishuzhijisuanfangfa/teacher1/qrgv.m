function [Q,R] =qrgv(A)
m=size(A,1);
n=size(A,2);
R=A;
Q=eye(m);
for j=1:n
    for i=m:-1:j+1
        T=mygivens(R(:,j),i-1:i);
        Q=Q*T;
        R=T*R;
    end
end

