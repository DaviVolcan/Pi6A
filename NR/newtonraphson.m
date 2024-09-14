function raiz = newtonraphson(f, df, x0, tol, max_iter)
% NEWTONRAPHSON Find the root of the function using Newton-Raphson method
% Inputs:
%   f - Function handle for the function whose root is to be found
%   df - Function handle for the derivative of the function
%   x0 - Initial guess
%   tol - Tolerance for convergence
%   max_iter - Maximum number of iterations
% Output:
%   raiz - Computed root of the function

% Initialize variables
x = x0;
for k = 1:max_iter
    fx = f(x);
    dfx = df(x);
    if dfx == 0
        error('Derivative is zero. No solution found.');
    end
    x_new = x - fx / dfx;
    if abs(x_new - x) < tol
        raiz = x_new;
        return;
    end
    x = x_new;
end
error('Maximum number of iterations reached. No solution found.');
end
