%
% Newton's method: run newton.oct
%
sopt="Newton Method"
epsilon = 1.0e-6;
ss0=0.1;
nit = 1000;

clear pp
more on
x0(1) = input("Give the starting point: first component: ");
x0(2) = input("Give the starting point: second component: ");
i=1;
pp(i,:) = x0(:);
while((norm(fp(x0)) > epsilon) && (i < nit))
  JJ = inv(fpp(x0));                    % inverse Hessian
  S = -(JJ*fp(x0)')';                   % update direction
  x1 = x0 + S;
  if (  f(x1) > f(x0) )                 % backtracking if needed
    x1 = backtrack(x0,S,ss0,epsilon);
  end
  x0 = x1;
  i=i+1;
  pp(i,:) = x0(:);
endwhile
disp("Number of iterations:"),disp(i)
disp("Solution:"),disp(x0)
disp("Function value:"),disp(f(x0))
disp("Norm of fprime:"),disp(norm(fp(x0)))
