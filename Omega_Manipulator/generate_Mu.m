function [ Mu ] = generate_Mu( xyz, P )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
input = [xyz(:,1).*ones(3,1);xyz(:,2).*ones(3,1);xyz(:,3).*ones(3,1)];
Mu = 1./(ones(9,1)+ ((input - P(:,2))./P(:,1)).^2 ); 
end

