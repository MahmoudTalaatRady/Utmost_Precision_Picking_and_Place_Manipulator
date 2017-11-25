 function [ W ] = Multiplication( Mu )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
W = ones(27,1) ;
x=1;
for i=1:3
    for j=4:6
        for k=7:9
            W(x) = Mu(i)* Mu(j)* Mu(k);
            x = x+1;
        end
    end
end

end

