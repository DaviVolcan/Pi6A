# Simulando novamente a execução para fornecer a resposta correta
# Definindo a função f(x)
def f(x):
    return x**4 + x - 4

# Método da Bisseção
def bissecao(f, a, b, tol, max_iter):
    if f(a) * f(b) >= 0:
        raise ValueError("A função deve ter sinais opostos nos extremos do intervalo.")
    
    for k in range(max_iter):
        c = (a + b) / 2
        fc = f(c)
        
        if abs(fc) < tol or (b - a) / 2 < tol:
            return c
        
        if f(a) * fc > 0:
            a = c
        else:
            b = c
    
    raise ValueError("Número máximo de iterações atingido. Não foi possível encontrar a raiz.")

# Parâmetros iniciais
a = 1
b = 2
tol = 1e-6
max_iter = 100

# Executando o método da Bisseção
raiz = bissecao(f, a, b, tol, max_iter)
print(raiz)