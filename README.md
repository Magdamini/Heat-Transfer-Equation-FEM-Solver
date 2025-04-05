# Heat Transfer Equation FEM Solver
Project from Diffrential and Difference Equations Course at AGH University 2023/24.
Project is a MATLAB solver for following heat transport problem using the finite elements method. 
## Heat Transport Equation Problem 
***Equation:*** 
$$ -\ k(x) \frac{d^2 u(x)}{dx^2} = 0 $$
 where, 
 $$ k(x) = \begin{cases} 1, & x \in (0,1) \\ 2, & x \in (1,2) \end{cases} $$ 
 ***Interval:*** 
 $$ \mathbb{\Omega} = (0,2) $$
 ***Boundary conditions:*** 
 $$ \begin{cases} u(2) = 3\\ u(0) + u(0)' = 20 \end{cases} $$

## Final solution ($n=20$)
![result](https://github.com/user-attachments/assets/f0f45ee2-6b60-4953-b0af-adbab10fbeee)
