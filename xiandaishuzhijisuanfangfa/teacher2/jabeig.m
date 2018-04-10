function [D,DN,its] = jabeig(A,eps)
    n=size(A,1);
    D=A;
    NA=norm(D-diag(diag(D)),'fro');
    its=0;
    while(NA>eps)
        its=its+1;
        for j=1:n-1
            for k=k+1:n
                if(D(j,j)==D(k,k))
                  phi=pi/4;
                  cosphi=cos(phi);
                  sinphi=sin(phi);
                else
                    tan2phi=2*D(j,k)/(D(j,j)-D(k,k));
                    cos2phi=1/sqrt(1+tan2phi^2);
                    cosphi=sqrt(1+cos2phi)/2;
                    if(tan2phi>0)
                        sinphi=sqrt((1-cos2phi)/2);
                    else
                        sinphi=-sqrt((1-cos2phi)/2);
                    end
                end
                J=eye(n);
                J(j,j)=cosphi;
                J(k,k)=cosphi;
                J(k,j)=sinphi;
                J(j,k)=-sinphi;
                D=J'*D*J;
                DA=norm(D-diag(diag(D)),'fro');
            end
        end
    end
    
end

