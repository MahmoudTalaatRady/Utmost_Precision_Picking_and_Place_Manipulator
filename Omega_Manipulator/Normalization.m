function [ Wn ] = Normalization( W )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Wn = W ./ sum(W) ;

end

