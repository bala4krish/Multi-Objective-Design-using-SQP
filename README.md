# Multi-Objective-Design-using-SQP
Multi-Objective Design using Sequential Quadratic programming & Weighted Sum approach.

The purpose of this exercise is to design a cantilever cylindrical support column of minimum mass for a new water tank at a minimum deflection of tank due to wind and find the optimum values of design variables d_0 & t (two objectives) using sequential quadratic programming & weighted sum approach with a Matlab solver. This problem was originally created by G. Baenziger in the book "Introduction to optimmum design". 


Prof_Def.m
Defines the problem variables used in the design.

SQP_example.m
Implementation of SQP using the solver

SQP_Nonlcon.m
Defines the non-linear constraints such as axial, bending stresses and maximum allowed deflection etc required for the design

SQP_nonlfun.m
Implements weighted sum

With finding many values of do, t for the design we can find an optimal value by plotting a utopia frontier chart. That will show when two objective functions are minimized simultaneously, there is certainly tradeoff in the design. It also demonstrates that an ideal design model can obtained by choosing appropriate weight values, so the designer gets the best values to choose from.
