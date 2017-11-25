%startup_rvc
li1= 100 ;
li2= 175 ;
li3= 145 ;
li4= 70 ;
l1 =Link([0,li1,0,pi/2,0]);
l2 = Link([0,0,li2,0,0]);
l3 = Link([0,0,li3,0,0]);
l4 = Link([0,0,li4,0]);
L = [l1 l2 l3 l4];
AI_manipulator = SerialLink(L,'name','AI_manipulator');
AI_manipulator.plot([0 45 -45 45])