def f(x):
    return x**4 + x - 4

def df(x):
    return 4*x**3 + 1

x0 = 1.5  # Chute inicial
tol = 1e-6  # Tolerância
max_iter = 100  # Número máximo de iterações

def newtonraphson(f, df, x0, tol, max_iter):
    x = x0
    for k in range(max_iter):
        fx = f(x)
        dfx = df(x)
        if dfx == 0:
            raise ValueError("A derivada é zero. Não é possível continuar.")
        x_novo = x - fx / dfx
        if abs(x_novo - x) < tol:
            return x_novo
        x = x_novo
    raise ValueError("Maximo de iterações atingido. Não foi possível encontrar a raiz.")

# Executando o método de Newton-Raphson
raiz = newtonraphson(f, df, x0, tol, max_iter)
print(raiz)
#output: 1.2837816658635381