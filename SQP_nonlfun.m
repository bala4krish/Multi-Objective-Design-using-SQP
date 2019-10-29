    function [phi,f] = SQP_nonlfun(x)
    d0 = x(1); t = x(2);    
   
    % Mass
    f(1) = 235500*t*pi*(d0 - t);                           % kg
    f1min = 5.229144604593822e+04;                         % kg
    
    %deflection
    f(2) = 0.2867/(d0^4 - (d0 - 2*t)^4);                   % m
    f2min = 0.002413104664943;                             % kg                      
   
    % weighted sum approach
    phi1 = (f(1) - f1min)/abs(f1min);
    phi2 = (f(2) - f2min)/abs(f2min);
    
    % new objective function
    phi = 0*phi1+ 1*phi2;
  
    end