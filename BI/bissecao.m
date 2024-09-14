function raiz = bissecao(f, a, b, tol, max_iter)
% BISSECAO Find the root of the function using the bisection method
% Inputs:
%   f - Function handle for the function whose root is to be found
%   a - Lower bound of the interval
%   b - Upper bound of the interval
%   tol - Tolerance for convergence
%   max_iter - Maximum number of iterations
% Output:
%   raiz - Computed root of the function

% Check if the function values at the bounds have opposite signs
if f(a)*f(b) >= 0
    error('The function must have opposite signs at the interval endpoints.');
end

% Initialize variables
for k = 1:max_iter
    c = (a + b) / 2;  % Midpoint
    fc = f(c);
    %if abs(fc) < tol || (b - a) / 2 < tol
        %raiz = c;
        %return;
   % end
    if f(a)*fc > 0
        a = c;
    else
        b = c;
    end
    c
end
%error('Maximum number of iterations reached. No solution found.');
end
