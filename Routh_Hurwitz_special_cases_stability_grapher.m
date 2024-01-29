%Routh-Hurwitz-special-cases-stability-grapher
%Graphs and determines if a function in the s-domain is stable given the
%numerator and denominator.
%Under MIT licence, special thanks to Jorge Quishpe Armas.
%v1.0

%T(s)_{1}
clear %erases variables
numerator=20; %T(s) numerator
denominator=conv([1,0],[1 1 12 22 39 59 48 38]); %T(s) denominator
T=tf(numerator,denominator) %T(s)
Tc=feedback(T,1) %Tc(s)
polesTc=pole(Tc) %prints Tc(s) poles
figure;
pzplot(Tc); %graphs poles
figure;
step(Tc); %unitary step input
isstable(Tc) %prints stability

%T(s)_{2}
clear %erases variables
numerator=[1 7 -21 10]; %T(s) numerator
denominator=[1 1 -6 0 -1 -1 6]; %T(s) denominator
T=tf(numerator,denominator) %T(s)
Tc=feedback(T,1) %Tc(s)
polesTc=pole(Tc) %prints Tc(s) poles
figure;
pzplot(Tc); %graphs poles
figure; %creates new figure window
step(Tc); %unitary step input
isstable(Tc) %prints stability