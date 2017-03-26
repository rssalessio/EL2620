 clc; clear ;
jasdata
eigA = eig(A);
disp('Eigenvalues of the system: ');
eigA
disp('----');
% the latter two eigenvalues corresponds to the rudder dynamics since they
% are very fast. the flight dynamics has unstable poles