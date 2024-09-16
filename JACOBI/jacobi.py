import numpy as np

# matriz A
A = np.array([[10, 2, 1],
              [1, 5, 1],
              [2, 3, 10]])

# vetor x inicial
X = np.array([0.7, -1.6, 0.6])

# vetor b
B = np.array([7, -8, 6])

# código
n = 3
k = 1
max_iter = 4  # número máximo de iterações
tol = 5

D = np.zeros((n, n))  # Inicializa matriz D
I = np.zeros(n)  # Inicializa vetor I

# Loop para calcular D e I
for i in range(n):
    for j in range(n):
        if i == j:
            D[i, j] = 0
            I[i] = B[i] / A[i, i]
        else:
            D[i, j] = -A[i, j] / A[i, i]

# Iteração para atualizar X
while k < max_iter:
    X1 = np.dot(D, X) + I

    err = np.abs((X1 - X) / X1) * 100  # Calcula erro percentual
    mtol = np.full(n, tol)  # Vetor de tolerância

    # Verifica se o erro é menor que a tolerância para todos os elementos
    if np.all(err < mtol):
        break

    X = X1
    k += 1

print(X)
# Output: [ 0.978 -1.98   0.966]