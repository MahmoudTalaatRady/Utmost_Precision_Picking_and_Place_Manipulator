Output_Map=[-235;30;120] 
Theats_RAD = Online_ANFIS( Output_Map' ) 
Teatas_DEG = (Theats_RAD.*180)./pi  
Teatas_DEG(1) = Teatas_DEG(1)+5;
Teatas_DEG(2) = Teatas_DEG(2)+90 ;
Teatas_DEG(3) = Teatas_DEG(3)+135+15 ;
Teatas_DEG(4) = 45-Teatas_DEG(4)-7 ;
Teatas_DEG

servoWrite(a,9,floor(Teatas_DEG(1)));
servoWrite(a,10,floor(Teatas_DEG(2))); 
servoWrite(b,9,floor(Teatas_DEG(3))); 
servoWrite(b,10,floor(Teatas_DEG(4)));
