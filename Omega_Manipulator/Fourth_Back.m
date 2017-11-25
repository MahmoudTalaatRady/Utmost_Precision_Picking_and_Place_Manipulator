function [ dE2 ] = Fourth_Back( dE3,Mu )
%FOURTH_BACK Summary of this function goes here
%   Detailed explanation goes here
dW = zeros(9,27);
for x=1:9
    y = 1;
    for i=1:3
        for j=4:6
            for k=7:9
                    if (x==i || x==j || x==k)
                        dW(x,y) = Mu(i)* Mu(j)* Mu(k)/Mu(x);
                    end
                    y=y+1;
            end
        end
    end
end
dE2=dW*dE3;

end

