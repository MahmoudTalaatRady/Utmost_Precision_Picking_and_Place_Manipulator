function [ Output ] = Cal_theta( Wn, xyz, f )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Op_theta = Wn.*(f*([xyz 1])');
Output = sum(Op_theta);
end

