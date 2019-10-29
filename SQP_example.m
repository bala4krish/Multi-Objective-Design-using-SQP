% SQP method - minimizing the mass & deflection functions using fmincon

clear all
% three linear inequality constraints
A = [1/92,-1;-1,2;-1,2];
b = [0;0;-0.7];
% no linear equality constraints
Aeq = [];
beq = [];
% lower bounds in m
lb = [0.72;0.01];
% upper bounds in m
ub = [4.4;0.2];
% set options for SQP - these options
% do not include user-defined gradients)
options = optimoptions('fmincon','Algorithm','sqp', 'Display','iter');
% initial design value in m
x0 = [2; 0.1];
[x,fval,exitflag,output] = fmincon('SQP_nonlfun',x0,A,b,Aeq,beq,lb,ub, ...
    'SQP_Nonlcon',options)
[phi,f] = SQP_nonlfun(x);
[g, h] = SQP_Nonlcon(x);
% obtain the values of functions and constraints
    f1 = f(1)
    f2 = f(2)
    phi
    g  
    h   
