function [ scaled ] = scaling( unscaled, scale )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

n= length(unscaled);
scaled = (unscaled - ones(1,n).*scale(3,:))*2./(scale(1,:)-scale(2,:));

