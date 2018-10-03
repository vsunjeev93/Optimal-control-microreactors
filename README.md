# Optimal-control-microreactors
In this project optimal control policies for minimum temperature deviation are obtianed. The problem is singular and hence straightforward application of pontriyagin's maximum principle fails. The optimal profile is obtained in the following way:

In NLP_optimalcontrol.gm the optimal profile sequence is identified using brute force optimization. 

Following which the exact optimal profiles are obtained by solving a low dimensional optimization problem with switching times as the position vairables. Depending upon the sequence, the following code is used:

If sequence is Bang Bang

Bang_Bang.m- A multipoint BVP with 2 regions. 
Bang_Bang_bc-Boundary conditions for the BVP.
Bang_Bang_objective_.m- Objective function which calls the multipoint BVP function and returns the objective function. 

If the sequence is Bang_bang_singular_bang

Bang_bang_singular_bang.m-A multipoint BVP with 4 regions
Bang_bang_singular_bang_bc-Boundary conditions for the BVP
Bang_bang_singualr_bang_objective.m-Objective function which calls the multipoint BVP function and returns the objective function

In both the cases, fmincon is used to solve the optimization routine.
