clear;
close();
clc;

// matriz A
A = [10 2 1; 1 5 1; 2 3 10];

// vetor x inicial
X = [0.7; -1.6; 0.6];

// vetor b
B = [7; -8; 6];

// código
n = 3;
k = 1;
max_iter = 4;  // número máximo de iterações
tol = 5;

D = zeros(n, n);  // Inicializa matriz D
I = zeros(n, 1);  // Inicializa vetor I

// Loop para calcular D e I
for i = 1:n
    for j = 1:n
        if i == j then
            D(i, j) = 0;
            I(i, 1) = B(i, 1) / A(i, i);
        else
            D(i, j) = -A(i, j) / A(i, i);
        end
    end
end

// Iteração para atualizar X
while (k < max_iter)
    X1 = D * X + I;

    err = abs((X1 - X) ./ X1) * 100;  // Calcula erro percentual
    mtol = tol * ones(n, 1);  // Vetor de tolerância

    // Verifica se o erro é menor que a tolerância para todos os elementos
    if and(err < mtol) then
        mprintf("%1.5f\n", X1);
        break;
    end

    X = X1;
    k = k + 1;
end
