%a continuación voy a definir algunos functores de prueba para entender mejor las listas.

miembro(X,[X|_]). % me fijo si el elemento encabeza la lista
miembro(X,[_|R]) :- miembro(X,R). %me fijo si para la cola de la lista, el elemento encabeza la lista. Este procedimiento se repetirá hasta que la cola de la lista esté vacía.

concatenar([],L,L). %Los primeros dos parámetros son la entrada, mientras que el tercero es la lista concatenada. En este caso está diciendo que concatenar una lista vacía con
%una lista devuelve la misma lista. (sería el caso de corte de la recursión)
concatenar([X|L1],L2,[X|L3]) :- concatenar(L1,L2,L3). %Esta parte se encarga de "vaciar" L1 para llegar a la condición de corte definida arriba, básicamente toma el primer elemento
%de la primer lista y lo inserta al comienzo de L3, repitiendo recursivamente el proceso hasta que se vacíe L1.

inversa([],[]). %la inversa de una lista vacía es otra lista vacía. (condición de corte)
inversa([X|L1],Linv):- %aquí Linv es el resultado de invertir L1.
                    inversa(L1,Resto), %aquí se aplica la recursividad, invirtiendo lo que queda de L1 y agregándoselo al Resto, que es parte de la lista ya invertida.
                    concatenar(Resto,[X],Linv). %esta es la parte que se encarga de concatenar, a Resto le añade el primer elemento de L1, creando así la inversa.

% EJERCICIO 2

contar(_, [], 0). % Condición de corte, no importa cuál sea el elemento, en una lista vacía deben haber cero.
%en ambos casos, la recursión se va a basar en recorrer la cola de la lista luego de verificar si estaba o no el elemento en cuestión.
contar(Elem, [Elem|Cola], Cantidad) :- contar(Elem, Cola, CantPrevia), Cantidad is CantPrevia + 1. %si encuentro el elemento, a la suma de la cantidad anterior (CantPrevia), 
%debo sumarle 1, y este será el valor de mi Cantidad total.
contar(Elem, [X|Cola], Cantidad) :- Elem\=X, contar(Elem, Cola, Cantidad). %si no encuentro el elemento, no sumo nada, simplemente sigo con la cola de la lista.

% EJERCICIO 3

cantidad([], 0). % Una lista vacía no tiene elementos, condición de corte.
cantidad([_|Cola], Cant) :- cantidad(Cola, CantPrevia), Cant is CantPrevia + 1. %este es aún más sencillo que el anterior ya que ni siquiera me interesa el elemento que encabeza,
%simplemente sumo siempre 1 a la cantidad hasta que se acabe la lista y termine por la condición de corte.

% EJERCICIO 4

suma([], 0). % si la lista no tiene elementos, sumo cero. Condición de corte.
suma([Elem|Cola], Suma) :- suma(Cola, SumaPrevia), Suma is SumaPrevia + Elem. %igual al de arriba, en vez de contar sumo el elemento.

% EJERCICIO 5

positivos([],[]). % no hay positivos en una lista vacía, condición de corte.
positivos([Numero|Cola], [Numero|Cola2]) :- Numero>0, positivos(Cola, Cola2). %creería q el append se hace en la declaración inicial de la regla, a medida q la lista principal se achica,
%se va generando la lista de los positivos en Cola2.
positivos([Numero|Cola], ListaPositivos) :- Numero<1, positivos(Cola, ListaPositivos).

% EJERCICIO 6

suma_lista([], [], []). %la suma de dos listas vacías es una lista vacía, condición de corte.
suma_lista([Elem1|Cola1], [Elem2|Cola2], [Suma|Cola3]) :- Suma is Elem1+Elem2, suma_lista(Cola1, Cola2, Cola3). %principio similar al anterior, nada más cambia la parte de la Suma.

% EJERCICIO 7

eliminar_dup([],[]). %condición de corte.
eliminar_dup([Elem|Cola1],SinDup) :- miembro(Elem,Cola1), eliminar_dup(Cola1,SinDup).
eliminar_dup([Elem|Cola1],[Elem|Cola2]) :- \+ miembro(Elem,Cola1), eliminar_dup(Cola1,Cola2).   % \+ es "not"

% EJERCICIO 8
%mayor(X1, X2, X1):- X1 >= X2.
%mayor(X1, X2, X2):- X1 < X2.

%profundidad([], 0). %rama vacia
%profundidad([_], 1). %hoja
%profundidad([I, _, D], P):- profundidad(I, PI), profundidad(D, PD), 
%    mayor(PI, PD, PAux), P is PAux + 1. %comparo subarbol izq y subarbol der recursivamente, sumo 1 cuando entro.

% EJERCICIO 9
insertar_ordenado(Elem, [], [Elem]). %si debo insertar el elemento en una lista vacía, lo inserto directamente, condición de corte.
insertar_ordenado(Elem, [Cabeza1|Cola1], [Elem|[Cabeza1|Cola1]]):- Elem < Cabeza1. %cuando encuentro la cabeza "posterior" a mi elemento, inserto el elemento en frente de toda la lista y corto.
insertar_ordenado(Elem, [Cabeza1|Cola1], [Cabeza1|Cola2]):- Elem >= Cabeza1, insertar_ordenado(Elem, Cola1, Cola2). %si no, sigo buscando en las colas de las listas.

% EJERCICIO 10
ordenar([],[]). %una lista vacía ordenada es una lista vacía.
ordenar([Cabeza|Cola], ListaOrdenada):- ordenar(Cola,ListaAuxiliar), insertar_ordenado(Cabeza,ListaAuxiliar,ListaOrdenada).

% EXPLICACIÓN DE LA RECURSIÓN
%El proceso de inserción en la lista auxiliar se realiza de tal manera que se mantiene el orden de los elementos:

%La consulta inicial es ordenar([2, 4, 3, 1], ListaOrdenada).
%Se separa la lista en Cabeza = 2 y Cola = [4, 3, 1].
%Se llama a ordenar(Cola, ListaAuxiliar) para ordenar la Cola.
%Ahora, ordenar([4, 3, 1], ListaAuxiliar) se convierte en la nueva consulta.
%Este proceso se repite, separando la Cabeza y la Cola y llamando a ordenar en la Cola más pequeña.
%Eventualmente, se llega al caso base ordenar([], ListaAuxiliar), que devuelve una lista vacía.
%Ahora, con cada retorno de la recursión, se llama a insertar_ordenado para colocar la Cabeza en la posición correcta dentro de la ListaAuxiliar que ya está ordenada.



% 11 y 12 robados

%EJERCICIO 11 - aplanar lista
concatenar([], L, L). %caso base, la lista está vacía
concatenar([X|L1], L2, [X|L3]):- concatenar(L1, L2, L3).%concatena el 1er elem de L1 con la concatenación del resto

aplanar([], []). %caso base, la lista está vacía
%si el 1er elem es una lista lo aplana, aplana el resto de la lista y concatena
aplanar([X|L1], L2):- aplanar(X, L3), aplanar(L1, L4),concatenar(L3, L4, L2).
aplanar(X, [X]).%caso base si X no es una lista
%aplanar([1, [2, [3]]], ListaPlana). -> ListaPlana = [1, 2, 3]

%EJERCICIO 12 - permutaciones
ins(X, L, [X | L]). %inserta X al principio de L 
ins(X, [Y | L1], [Y | L2]) :- ins(X, L1, L2). %inserta X en la cola L1 recursivamente y lo asigna a L2

per([], []).%caso base, la permutación de la lista vacía es la misma lista
per([X | L], Lp) :- per(L, L1), ins(X, L1, Lp). %genera permutaciones de la cola de L y las inserta en L1, inserta X en todas las posiciones de L1

%El codigo genera todas las permutaciones posibles de una lista, es decir, las
%combinaciones teniendo en cuenta el orden. Para eso usa la función insertar recursivamente
%%y permutar recursivamente, insertando los elementos y asignandolos a la lista resultante:
%L = [1, 2, 3]
%L = [2, 1, 3]
%L = [2, 3, 1]
%L = [1, 3, 2]
%L = [3, 1, 2]
%L = [3, 2, 1]


%---------- PROLOG ----------
/*
Paradigma declarativo - QUÉ
- Base de conocimientos - Hechos
- Motor de inferencia - Reglas
- Resolución - Preguntas
- Lógica + Control = PROGRAMA
- Búsqueda de soluciones: Unificación - Backtracking (corte, fail)
*/
