% servoWrite(a,9,180);
% servoWrite(a,10,110);
% servoWrite(b,9,125);
% servoWrite(b,10,90);


[X , Y] = Color_Detection_Fn();
Output_Map = CamMap( X , Y ) ;
Theats_RAD = Online_ANFIS( Output_Map' ); 
Teatas_DEG = (Theats_RAD.*180)./pi;
Teatas_DEG(1) = Teatas_DEG(1); % 2zay kanet 13 w t7t 5
Teatas_DEG(2) = Teatas_DEG(2)+90;
%+15 map third servo
Teatas_DEG(3) = Teatas_DEG(3)+135; %+ 10 ; 
%-7 map Forth servo
Teatas_DEG(4) = 45-Teatas_DEG(4) ;%-5;


%3lshan nrfa3el arm lfo2 2bl myt7rak  
% servoWrite(a,10,110);
% servoWrite(b,9,125);

pause(.5);

servoWrite(a,9,floor(Teatas_DEG(1))); 
servoWrite(a,10,floor(Teatas_DEG(2))); 
servoWrite(b,9,floor(Teatas_DEG(3))); 
servoWrite(b,10,floor(Teatas_DEG(4))); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pause(1);
%-----------------------------------------
%3lshan ynzel ylz2 
Output_Map(3)=0; % Di kanet 20 3shan elno2ta bta3t 3 dof telmes 5letha 80
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

%3lshan my5btsh :P

Output_Map=[-235;30;60] ; % 5lest z 160 nfs elb3d ely gwah CamMap 3shan mylz2sh 
%law bt5ba6 n5leha 75
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
%3lshan ynzel

Output_Map=[-235;30;0] ; % 5letha 85 3shan ynzl el object 3la el magnet
%law bt5ba6 n5leha 15
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
%3lshan tban 2nha 2tshdet



Output_Map=[-235;30;60] ; % yetl3 tany 
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
