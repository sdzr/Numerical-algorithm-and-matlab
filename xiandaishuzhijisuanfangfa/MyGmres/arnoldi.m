function [Ho,Q] =arnoldi(A,q,k)
%重正交的Arnoldi方法，给定一个矩阵A(nxn),向量n维q（1），norm（q（1），2）=1，
%和一个正整数k，计算一个长度为k的Arnoldi分解。
%Arnoldi方法是krylov中子空间法的一种，主要用于计算一个大型稀疏非对称矩阵的
%少数几个特征值和对应的特征向量。
%Ho为上hessenberg矩阵，Q为正交矩阵。
%Ho是（k+1）乘k的矩阵。
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

