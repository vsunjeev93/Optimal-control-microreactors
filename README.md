# Optimal-control-microreactors
In this project optimal control policies for minimum temperature deviation are obtianed. The problem is singular and hence straightforward application of pontriyagin's maximum principle fails.

In NLP_optimalcontrol.gm the optimal profiles are identified using brute force optimization. 

Following which the exact optimal profiles are obtained by solving a low dimensional optimization problem with switching times as the position vairables. 

Bang_Bang.m,Bang_Bang_bc, Bang_Bang_objective.m- Code to obtain exact bang-bang optimal profiles
Bang_bang_singular_bang.m, Bang_bang_singular_bang_bc,Bang_bang_singualr_bang_objective.m- Obtain to obtain exact bang-bang-singular-bang profiles. 

