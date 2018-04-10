function xm=gmresm(A,b,m,c)
%gmres（m）算法，给定一个矩阵A(nxn),和一个n维向量b，和一个整数m，和一个允许的误差c>0
%计算一个n为向量xm，使得norm（b-A*xm，2）<=c.
xm=0;
pm=norm(b,2);
while abs(pm)/norm(b,2)>c
    ro=b-A*xm;
    bo=norm(ro,2);
    q1=ro/bo;
    Ho=arnoldi(A,q1,m);
    

end

