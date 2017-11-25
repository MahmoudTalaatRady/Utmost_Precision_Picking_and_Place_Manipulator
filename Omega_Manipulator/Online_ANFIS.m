function [ Output_Run] = Online_ANFIS( XYZ_input )
f = load('f_data.mat');
P = load('P_data.mat');
S = load('Scaling_parameters.mat');
Output_Run = zeros(1,4);
xyz_scaled_Run=scaling( XYZ_input, S.scale );
m=1;
n = 1;
for i=1:3
Mu_Run = generate_Mu(xyz_scaled_Run,P.P_total(:,m:m+1));
W_Run = Multiplication (Mu_Run);
Wn_Run = Normalization( W_Run);
Output_Run(i) = Cal_theta( Wn_Run,xyz_scaled_Run,f.f_total(:,n:n+3));
m = m + 2;
n = n + 4;
end
% Theats for the four servos
Output_Run(4) = - Output_Run(2) - Output_Run(3) - pi/2;
end

