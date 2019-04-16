function [P] = potencia(f, T, A)

Aux = 0; %Variable auxiliar para almacenar el dato de salida 
    
for i=1 : length(f) %ciclo desde 1 hasta el n�mero de trozos de la expresi�n
    Aux = Aux + (1/T)*int(abs(f(i)).^2 ,'t', A(i), A(i+1));
end

    P = Aux;
end
