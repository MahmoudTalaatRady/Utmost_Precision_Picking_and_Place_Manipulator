function [ output ] = CamMap( x , y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
z = 18  ; % blnesba ll coordinates bta3 el cam
%%%%% Ratio 
ratio = [0.068475 ; 0.066625];
output_Map = double([x ; y ]).* ratio;
output_Map = [output_Map ; z ].*10;

%%%%% DH 
dx = -217;
dy = 44;
dz = -112;
d = [dx dy dz];
h = [eye(3) , d'];
l = [0 0 0 1];
H = [h ; l];
xyz_board = [output_Map ; 1];
xyz_rob = ones(4,1);
xyz_rob = H * xyz_board;
output = xyz_rob(1:3,:);


end

