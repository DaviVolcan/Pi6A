clear all, close all, clc
f = @(x) x^4 + x - 4;
df = @(x) 4*x^3 + 1;
x0 = 1.5;  % Chute inicial
tol = 1e-6;  % Tolerancia
max_iter = 100;  % Numero maximo de iteracoes

raiz = newtonraphson(f, df, x0, tol, max_iter);
fprintf('A raiz encontrada é: %f\n', raiz);