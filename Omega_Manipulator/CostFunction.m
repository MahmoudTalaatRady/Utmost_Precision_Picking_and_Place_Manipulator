function [ Ep ] = ComputeCost( input, Tm)
%COMPUTECOST Summary of this function goes here
%   Detailed explanation goes here

Tm = zeros(1, m);
Om = zeros(1,m);

p = length(input);
input = [ ones(p,1), input];

E = sum(((Tm-Om)' * (Tm-Om)).^2);

end


