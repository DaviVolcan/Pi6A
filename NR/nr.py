# Re-executando o código após o reset
# Definindo as funções f e df para simular o comportamento
def f(x):
    return x**4 + x - 4

def df(x):
    return 4*x**3 + 1

# Parâmetros iniciais
x0 = 1.5  # Chute inicial
tol = 1e-6  # Tolerância
max_iter = 100  # Número máximo de iterações

def newtonraphson(f, df, x0, tol, max_iter):
    x = x0
    for k in range(max_iter):
        fx = f(x)
        dfx = df(x)
        if dfx == 0:
            raise ValueError("Derivative is zero. No solution found.")
        x_new = x - fx / dfx
        if abs(x_new - x) < tol:
            return x_new
        x = x_new
    raise ValueError("Maximum number of iterations reached. No solution found.")

# Executando o método de Newton-Raphson
raiz = newtonraphson(f, df, x0, tol, max_iter)
print(raiz)
#output: 1.2837816658635381