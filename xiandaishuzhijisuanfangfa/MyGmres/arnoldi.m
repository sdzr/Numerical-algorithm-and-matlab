function [Ho,Q] =arnoldi(A,q,k)
%��������Arnoldi����������һ������A(nxn),����nάq��1����norm��q��1����2��=1��
%��һ��������k������һ������Ϊk��Arnoldi�ֽ⡣
%Arnoldi������krylov���ӿռ䷨��һ�֣���Ҫ���ڼ���һ������ϡ��ǶԳƾ����
%������������ֵ�Ͷ�Ӧ������������
%HoΪ��hessenberg����QΪ��������
%Ho�ǣ�k+1����k�ľ���
Q(:,1)=q;
for j=1:k
    w=A*Q(:,j);
    for i=1:j
        Ho(i,j)=Q(:,i)'*w;
        w=w-Ho(i,j)*Q(:,i);
    end
    for i=1:j
        s=Q(:,i)'*w;
        Ho(i,j)=Ho(i,j)+s;
        w=w-s*Q(:,i);
    end
    Ho(j+1,j)=norm(w,2);
    if Ho(j+1,j)==0
        break;
    else
        Q(:,j+1)=w/Ho(j+1,j);
    end
end

