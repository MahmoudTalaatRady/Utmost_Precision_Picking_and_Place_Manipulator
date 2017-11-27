% servoWrite(a,9,180);
% servoWrite(a,10,110);
% servoWrite(b,9,125);
% servoWrite(b,10,90);


[X , Y] = Color_Detection_Fn();
Output_Map = CamMap( X , Y ) ;
Theats_RAD = Online_ANFIS( Output_Map' ); 
Teatas_DEG = (Theats_RAD.*180)./pi;
Teatas_DEG(1) = Teatas_DEG(1); 
Teatas_DEG(2) = Teatas_DEG(2)+90;
%+15 map third servo
Teatas_DEG(3) = Teatas_DEG(3)+135; %+ 10 ; 
%-7 map Forth servo
Teatas_DEG(4) = 45-Teatas_DEG(4) ;%-5;



% servoWrite(a,10,110);
% servoWrite(b,9,125);

pause(.5);

servoWrite(a,9,floor(Teatas_DEG(1))); 
servoWrite(a,10,floor(Teatas_DEG(2))); 
servoWrite(b,9,floor(Teatas_DEG(3))); 
servoWrite(b,10,floor(Teatas_DEG(4))); 
%-----------------------------------------
pause(1);
%-----------------------------------------

Output_Map(3)=0; 
Theats_RAD = Online_ANFIS( Output_Map' ); 
Teatas_DEG = (Theats_RAD.*180)./pi ;
Teatas_DEG(1) = Teatas_DEG(1);
Teatas_DEG(2) = Teatas_DEG(2)+90;
Teatas_DEG(3) = Teatas_DEG(3)+135; 
Teatas_DEG(4) = 45-Teatas_DEG(4) ;

servoWrite(a,9,floor(Teatas_DEG(1))); 
servoWrite(a,10,floor(Teatas_DEG(2))); 
servoWrite(b,9,floor(Teatas_DEG(3))); 
servoWrite(b,10,floor(Teatas_DEG(4)));
pause(1);



Output_Map=[-235;30;60] ; 
Theats_RAD = Online_ANFIS( Output_Map' ) ;
Teatas_DEG = (Theats_RAD.*180)./pi ; 
Teatas_DEG(1) = Teatas_DEG(1);
Teatas_DEG(2) = Teatas_DEG(2)+90 ;
Teatas_DEG(3) = Teatas_DEG(3)+135 ;
Teatas_DEG(4) = 45-Teatas_DEG(4) ;

servoWrite(a,9,floor(Teatas_DEG(1)));
servoWrite(a,10,floor(Teatas_DEG(2))); 
servoWrite(b,9,floor(Teatas_DEG(3))); 
servoWrite(b,10,floor(Teatas_DEG(4)));
pause(1);
%-----------------------------------------


Output_Map=[-235;30;0] ;

Theats_RAD = Online_ANFIS( Output_Map' ) ;
Teatas_DEG = (Theats_RAD.*180)./pi ; 
Teatas_DEG(1) = Teatas_DEG(1);
Teatas_DEG(2) = Teatas_DEG(2)+90 ;
Teatas_DEG(3) = Teatas_DEG(3)+135 ;
Teatas_DEG(4) = 45-Teatas_DEG(4) ;

servoWrite(a,9,floor(Teatas_DEG(1)));
servoWrite(a,10,floor(Teatas_DEG(2))); 
servoWrite(b,9,floor(Teatas_DEG(3))); 
servoWrite(b,10,floor(Teatas_DEG(4)));
pause(1);
%-----------------------------------------




Output_Map=[-235;30;60] ; 
Theats_RAD = Online_ANFIS( Output_Map' ) ;
Teatas_DEG = (Theats_RAD.*180)./pi ; 
Teatas_DEG(1) = Teatas_DEG(1);
Teatas_DEG(2) = Teatas_DEG(2)+90 ;
Teatas_DEG(3) = Teatas_DEG(3)+135 ;
Teatas_DEG(4) = 45-Teatas_DEG(4) ;

servoWrite(a,9,floor(Teatas_DEG(1)));
servoWrite(a,10,floor(Teatas_DEG(2))); 
servoWrite(b,9,floor(Teatas_DEG(3))); 
servoWrite(b,10,floor(Teatas_DEG(4)));

pause(1);
% 
% Output_Map=[-50;200;100] ;
% Theats_RAD = Online_ANFIS( Output_Map' ) ;
% Teatas_DEG = (Theats_RAD.*180)./pi ; 
% Teatas_DEG(1) = Teatas_DEG(1)+5;
% Teatas_DEG(2) = Teatas_DEG(2)+90 ;
% Teatas_DEG(3) = Teatas_DEG(3)+135 +15;
% Teatas_DEG(4) = 45-Teatas_DEG(4)-7 ;
% 
% servoWrite(a,9,floor(Teatas_DEG(1)));
% servoWrite(a,10,floor(Teatas_DEG(2))); 
% servoWrite(b,9,floor(Teatas_DEG(3))); 
% servoWrite(b,10,floor(Teatas_DEG(4)));
