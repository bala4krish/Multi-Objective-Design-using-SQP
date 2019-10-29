syms d0 t                                       % UNITS
                                                % d0, t in meters
h = 10;                                         % m
H = 30;                                         % m
D = 10;                                         % m
w = 700;                                        % N/m^2
rho = 7850;                                     % N/m^3
e = 0.1;                                        % m
delta = 0.2;                                    % m
yw = 10000;                                     % N/m^3
ys = 80000;                                     % N/m^3
E = 210e9;                                      % N/m^2
I = (pi/64)*(d0^4-(d0-2*t)^4);                  % m^4
A = pi*t*(d0-t);                                % m^2
bsa = 165e6;                                    % N/m^2
r = sqrt(I/A);                                  % m
asa = 12*pi^2*E/(92*(H/r)^2);                   % N/m^2
tt = 0.015;                                     % m
V = 1.2*pi*D^2*h;                               % m^3
As = 1.25*pi*D^2;                               % m^2
Ap = 2*D*h/3;                                   % m^2
P = V*yw + As*tt*ys;                            % N
W = w*Ap;                                       % N

d1 = W*H^2*(4*H + 3*h)/(12*E*I);                % m
d2 = H*(0.5*W*h + P*e)*(H+h)/(2*E*I);           % m
d = d1+d2;                                      % m

M = W*(H+0.5*h)+(d+e)*P;                        % N.m

F = A*H*rho                                       % kg

sb = M*d0/(2*I) ;                                % N/m^2
sa = P/A;                                        % N/m^2

% Actual Equations for functions and Constraints Below

% sa = 12150000/(t*(d0 - t))
% sb = 5.5517e7*d0/(d0^4 - (d0 - 2*t)^4) + 1.1146e8/((d0^4 - (d0 -2*t)^4)^2)
% asa = 3.7547e7 * (d0^2 - 2*d0*t + 2*t^2)
% F = t*pi*(d0 - t);
% d = 0.2867/(d0^4 - (d0 - 2*t)^4);

