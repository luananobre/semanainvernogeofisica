%
% Fletcher-Reeves method: run flecther-reeves.oct
%
sopt="Fletcher-Reeves Method"
epsilon = 1.0e-6;               % gradient min val
nit = 1e3;                      % number of iterations


clear pp
more on
x0(1) = input("Give the starting point: first component:");
x0(2) = input("Give the starting point: second component:");
pp(1,:) = x0(:);
i=1;
S0 = -fp(x0);
nfp0 = norm(S0);

% 1st iteration: steepest-descent method
ss = 0.01;                     % initial step-length
x1 = x0+ss*S0;
while(ss > epsilon)
  while( (f(x0) - f(x1)) > 0)
    x0 = x1;
    x1 = x0+ss*S0;
  endwhile
  x0 = x0-ss*S0;
  ss = 0.5*ss;
endwhile

% conjugated gradient
x0 = x1;
nfp1 = norm(fp(x0));
S1 = -fp(x1) + nfp1^2*S0/nfp0^2;
while( (norm(fp(x0)) > epsilon) && (i < nit))
  S0 = S1;
  nfp0 = norm(S0);
  ss = 0.01;
  x1 = x0+ss*S1;
  while(ss > epsilon)
    while( (f(x0) - f(x1)) > 0)
      x0 = x1;
      x1 = x0+ss*S1;
    endwhile
    x0 = x0-ss*S1;
    ss = 0.5*ss;
  endwhile
  x0=x1;
  nfp1 = norm(fp(x0));
  S1 = -fp(x1) + nfp1^2*S0/nfp0^2;
  i=i+1;
  pp(i,:) = x0(:);
endwhile
disp("Number of iterations:"),disp(i)
disp("Solution:"),disp(x0)
disp("Function value:"),disp(f(x0))
disp("Norm of fprime:"),disp(norm(fp(x0)))
