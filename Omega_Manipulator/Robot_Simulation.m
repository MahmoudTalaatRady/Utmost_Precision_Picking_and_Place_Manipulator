startup_rvc;
li1 = 110;
li2 = 175;
li3 = 145;
li4 = 70;

L1 = Link([0, li1, 0, pi/2]);
L2 = Link([0, 0, li2, 0]);
L3 = Link([0, 0, li3, 0]);
L4 = Link([0, 0, li4, 0]);
L = [L1 L2 L3 L4];
Manipulator = SerialLink(L,'name','Manipulator');

XYZ_input = [150 160 150];
theta = Online_ANFIS( XYZ_input );
Manipulator.plot(theta);