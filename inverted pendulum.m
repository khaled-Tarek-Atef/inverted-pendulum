clear
clc
sys=linearize ('pendulem',getlinio('pendulem'));
[K1, K2] =ss2tf(sys.A, sys. B, sys. C, sys.D);
K1=round (K1,4) ;
K2=round (K2,4) ;
Dtheta_DF=tf (K1, K2);
%rlocus=rlocusplot (Dtheta_DF);
% sisotool(Dtheta_DF)