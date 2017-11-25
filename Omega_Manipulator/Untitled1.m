clear ;
a=arduino('COM6');
%servo 1
pinMode(a,9 ,'output');
servoAttach(a,9); 

%servo 2
pinMode(a,10 ,'output');
servoAttach(a,10); 


b=arduino('COM3');
% servo 3
pinMode(b,9 ,'output');
servoAttach(b,9); 

% servo 4
pinMode(b,10 ,'output');
servoAttach(b,10); 
