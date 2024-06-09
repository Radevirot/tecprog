factorial(0,1). %Condición de corte.
factorial(Xactual,Fnew) :- Xactual>0, Xprev is Xactual-1, factorial(Xprev, Fprev), Fnew is Xactual * Fprev.

% si el número es mayor a cero, me guardo el valor del número anterior y lo uso para calcular el factorial previo, una vez obtenido el factorial previo
% se lo multiplico a mi número actual para obtener el nuevo factorial.



