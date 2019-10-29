function [g, h] = SQP_Nonlcon(x)
%  problem constraints

d0 = x(1); t = x(2);                                            % design variables in m

asa = 3.7547e7 * (d0^2 - 2*d0*t + 2*t^2);                       % Allowable Stress N/m^2 

% non-linear inequality constraints
g(1) = 5.5517e7*d0/(d0^4 - (d0 - 2*t)^4)+...
    1.1146e8/((d0^4 - (d0 -2*t)^4)^2) - 165e6;                  % Bending Stress N/m^2
g(2) = 12150000 - asa*(t*(d0 - t));                             % Axial Stress N/m^2
g(3) = 0.2867 - 0.2*(d0^4 - (d0 - 2*t)^4);                      % Maximum Deflection m
g(4) = (12150000/(t*(d0 - t)))/asa +...                         % Combined Stress
    (5.5517e7*d0/(d0^4 - (d0 - 2*t)^4)+...
    1.1146e8/((d0^4 - (d0 -2*t)^4)^2))/165e6 -1;    

% equality constraints - none in this problem
h = [];