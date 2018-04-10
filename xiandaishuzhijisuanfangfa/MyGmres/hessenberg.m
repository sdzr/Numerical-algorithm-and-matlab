function H= hessenberg(A)
%����һ������A(nxn��)������һ��U�����һ����hessenberg����H��ʹ�ã�U*��AU=H��
%��hessenberg��������QR�ֽ�ʱ�����Լ��ٵ���������
%ȡ�ԡ�������������12ҳ��
H=A;
n=size(A);
U=zeros(n,n);
for k=1:n-2
    [w,y]=house(H(k+1:n,k));
    U(k+1:n,k)=w;
    v=w'*H(k+1:n,k:n);
    v=v';
    H(k+1:n,k:n)=H(k+1:n,k:n)-w*v';
    v=H(1:n,k+1:n)*w;
    H(1:n,k+1:n)=H(1:n,k+1:n)-v*w';
end
    e=eye(n);%���ɵ�λ����
    U(:,n)=e(:,n);
    U(:,n-1)=e(:,n-1);
    for k=n-2:-1:1
        w=U(k+1:n,k);
        v=w'*U(k+1:n,k+1:n);
        v=v';
        U(k+1:n,k+1:n)=U(k+1:n,k+1:n)-w*v';
        U(:,k)=e(:,k);
    end
end

