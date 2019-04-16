function [E] = energia(f,A)

Aux = 0; %Variable auxiliar para almacenar el dato de salida 
    
for i=1 : length(f) %ciclo desde 1 hasta el n�mero de trozos de la expresi�n
    Aux = Aux + limit( int(abs(f(i)).^2 ,'t', A(i), A(i+1)), 't', inf );
end

    E = Aux;
end

