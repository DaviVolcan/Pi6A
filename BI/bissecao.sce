clear;
close();
clc;

// Definição da função cuja raiz queremos encontrar
deff('y=f(x)', 'y = x^4 + x - 4');

// Definição do intervalo [a, b] para o método da bisseção
a = 1;  // Limite inferior do intervalo
b = 2;  // Limite superior do intervalo

tol = 1e-6;  // Tolerância
max_iter = 100;  // Número máximo de iterações

// Função de Bisseção embutida
function raiz = bissecao(f, a, b, tol, max_iter)
    // Verifica se os sinais de f(a) e f(b) são opostos
    if f(a) * f(b) >= 0 then
        error("A função deve ter sinais opostos nos extremos do intervalo.");
    end
    
    // Inicializa o processo de bisseção
    for k = 1:max_iter
        c = (a + b) / 2;  // Calcula o ponto médio
        fc = f(c);  // Calcula o valor da função no ponto médio
        
        // Verifica se o valor da função no ponto médio é suficientemente próximo de zero
        if abs(fc) < tol || (b - a) / 2 < tol then
            raiz = c;
            return;
        end
        
        // Decide qual subintervalo usar na próxima iteração
        if f(a) * fc > 0 then
            a = c;  // A raiz está no intervalo [c, b]
        else
            b = c;  // A raiz está no intervalo [a, c]
        end
    end
    
    // Se o número máximo de iterações for atingido sem encontrar a raiz
    error("Número máximo de iterações atingido. Não foi possível encontrar a raiz.");
endfunction

// Chamada da função de bisseção
raiz = bissecao(f, a, b, tol, max_iter);

// Exibe o resultado final para o usuário
mprintf('A raiz encontrada é: %f\n', raiz);
