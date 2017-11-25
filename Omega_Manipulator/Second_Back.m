function [ dE4 ] = Second_Back( dE , xyz , f)
%SECOND_BACK Summary of this function goes here
%   Detailed explanation goes here
%Layer 4
%dE4 (27,1)
dOp_theta =(f*([xyz 1])');
dE4 = dE.*dOp_theta;
end
