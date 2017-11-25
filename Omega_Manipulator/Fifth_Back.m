function [ dE1 ] = Fifth_Back( dE2, P, xyz )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
input = [xyz(1).*ones(3,1);xyz(2).*ones(3,1);xyz(3).*ones(3,1)];
dMu = (2*P(:,1).*(input-P(:,2)).^2)./((P(:,1).^2+(input-P(:,2)).^2).^2);
dE1 = dMu .* dE2;

end

