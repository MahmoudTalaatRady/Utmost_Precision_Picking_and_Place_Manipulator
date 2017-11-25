function [ dE ] = Third_Back( dE4 ,W )
%THIRD_BACK Summary of this function goes here
%   Detailed explanation goes here
%Layer3

C=sum(W)*ones(27,1)-W;
X= C./( sum(W)^2);
dE = dE4 .* X ;

end

