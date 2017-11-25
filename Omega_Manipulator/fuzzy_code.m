%m=no of samples
data = load('AI_Data.txt');
indeces=randi(10000,[10000,1]);
xyz = data(indeces,4:6);
xyz_scaled = xyz;
theta = data(indeces,1:3);
learning_rate =0.00000001;
max_xyz = max(xyz);
%Implementation for 3 theta's
xyz_scaled=Scaling_fn(xyz);
theta_scaled=Scaling_fn(theta);
m=length(xyz);
Mu=zeros(9,m);
W=zeros(27,m);
Wn=zeros(27,m);
f_total =ones(27,12);
P_total =ones(9,6);
Output=zeros(1,m);
% premise parameters initialization
P = ones(9,2);
P(:,1) = 0.6006*P(:,1);
P(:,2) = [1; 0; -1; 1; 0;-1 ; 1; 0; -1];
dE_Final=zeros(9,1);
for mm=1:3
%epocs
nn=mm+((mm-1)*3);
for e=1:8
    %forward path
    for i=1:m
        Mu(:,i) = generate_Mu (xyz_scaled(i,:),P);
        W(:,i) = Multiplication (Mu(:,i));
        Wn(:,i) = Normalization( W(:,i) );
    end 
    xyz_scaled_LSE = [xyz_scaled ones(m,1)];
    %LSE
    if e== 1
        f = LSE_Iterative(Wn,xyz_scaled_LSE,theta(:,mm));
        %f = 2*ones(27,4);
        
        f_total(:,nn:(nn+3))=f;
    end
    for i=1:m
        Output(mm,i) = Cal_theta( Wn(:,i),xyz_scaled(i,:),f);
    end
    %Back Propagation 
    for i=1:m
        %Layers
        %Layer5
        dE5=First_Back(Output(mm,i),theta(i,mm));
        %Layer4
        dE4=Second_Back(dE5,xyz_scaled(i,:),f);
        %Layer3
        dE3=Third_Back(dE4,W(:,i));
        %Layer2
        dE2=Fourth_Back(dE3,Mu(:,i));
        %Layer1
        dE1=Fifth_Back( dE2, P, xyz_scaled(i,:));
        dE_Final=dE_Final+dE1;
    end
    P(:,1) = P(:,1)-learning_rate*dE_Final;
    P_total(:,nn:(nn+1))=P;
end
end
