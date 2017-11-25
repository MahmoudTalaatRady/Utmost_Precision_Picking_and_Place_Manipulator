%startup_rvc
li1= 100 ;
li2= 175 ;
li3= 145 ;
%li4= 70 ;
l1 =Link([0,li1,0,pi/2,0]);
l2 = Link([0,0,li2,0,0]);
l3 = Link([0,0,li3,0,0]);
L = [l1 l2 l3];
AI_manipulator = SerialLink(L,'name','AI_manipulator');
Data_Set = [];
for theta1=0:pi/30:pi 
    for theta2=0:pi/30:(pi/2)
        for theta3=(-pi*2/3):pi/30:0
            kine_H = AI_manipulator.fkine([theta1 theta2 theta3]);
            Kine_O = kine_H(1:3,4)';
            Data_Set = [Data_Set;theta1 theta2 theta3 Kine_O];
        end
    end
end