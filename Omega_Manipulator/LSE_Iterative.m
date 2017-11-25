function [fin] = LSE_Iterative(Wn,X_mod,Y )
Gamma=10^8;
[m,z] =size(X_mod);
[n,g]=size(Wn);
A=zeros(m,n*z);
S=Gamma*eye([n*z n*z]);
R=zeros(n*z,1);
w= ones (n*z,g);
fin = zeros(n,z);
for i=1:n:z*n
    w(i:i+n-1,:)=Wn;
end
l=1;
for i=1:z
    for j=1:n
        A(:,l)=(w(l,:)').*X_mod(:,i);
        l=l+1;
    end
end
%end
for i=1:m
    %implement the two functions S and A
    num_s=S*(A(i,:)')*A(i,:)*S;
    %missing i dimension
    den_s=1+(A(i,:)*S*A(i,:)');
    S=S-(num_s/den_s);
    R=R+(S*A(i,:)'*(Y(i)-(A(i,:)*R)));
end
o = 1;
for i=1:z
    for j=1:n
        fin(j,i)=R(o);
        o=o+1;
    end
end
end
