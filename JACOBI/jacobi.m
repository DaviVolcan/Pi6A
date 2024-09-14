clear all, close all, clc

% matriz A
A = [10 2 1; 1 5 1; 2 3 10];

%vetor x inicial
X = [0.7; -1.6; 0.6;];

%vetor b
B = [7;-8; 6];

% codigo
n=3;
k=1;
max= 4;  %iterações
tol = 5;
for i=1:n
    for j=1:n
    if i == j 
    % Armazena indices inteiros
        D(i,j) = 0;
        I(i,1) = B(i,1)/A(i,i);
    else
        D(i,j) = -A(i,j)/A(i,i);
    end 
    end
end 

%atualiza
while (k < max)

X1 = D*X + I;
    for i=1:n
        err(i,1) = abs((X1(i,1)-X(i,1))/X1(i,1)*100);
        mtol(i,1)=tol;
    end    
    if err < mtol
        
    fprintf ('%1.5f\n',X1)
    break
    end
    X = X1;
    k = k+1;
end    
