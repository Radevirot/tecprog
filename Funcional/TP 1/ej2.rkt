(cons 'car '+) ; da (car . +) pq forma una lista impropia con los simbolos car y +
               ; los toma como simbolos porque se les puso ' antes.

(list 'esto '(es muy facil)) ; crea una lista formada por el elemento "esto"
                             ; seguida de otra lista que tiene los elementos "es", "muy" y "facil"
                             ; esto es así por usar list en vez de cons

(cons 'pero '(se está complicando...)) ; crea una lista que tiene los elementos "pero" "se" "está"
                                       ; y "complicando...", esto es así por usar cons

(cons '(y ahora no se que ) 'hizo) ; crea una lista impropia formada por una lista (y ahora no se que)
                                   ; y el elemento "hizo", es así por haber colocado el elemento
                                   ; independiente donde tendría que haber ido la lista

(quote (+ 7 2)) ; devuelve una lista con los elementos "+", "7" y "2". Esto es así porque
                ; la funcion quote hace lo mismo que colocarle el ' al principio

(cons '+ '(10 3)) ; agrega el simbolo + a la lista (10 3)

(car '(+ 10 3)) ; devuelve el primer elemento de la lista, el "tope" (en este caso el +)

(cdr '(+ 10 3)) ; devuelve la cola de la lista, que es una lista con todos los elementos que no
                ; sean el tope. (en este caso es la lista (10 3))

cons ; devuelve "#<procedure:cons>", indicando que cons es un procedimiento.

(quote (cons (car (cdr (7 4))))) ; devuelve una lista que tiene cons y una lista que
                                 ; tiene car y una lista que tiene cdr y una lista que tiene 7 y 4.
                                 ; Esto es por utilizar quote, toma todos los operadores como símbolos.

(quote cons) ; devuelve el elemento cons como un símbolo

(car (quote (quote cons))) ; devuelve "quote", toma el primer elemento de la lista (quote cons).

(+ 2 3) ; devuelve el resultado de la suma de los elementos

(+ '2 '3) ; los simbolos definidos con numeros toman el valor del numero, eso hace que el resultado
          ; en este caso también sea 5

(+ (car '(2 3)) (car (cdr '(2 3)))) ; (car '(2 3)) devuelve 2, (car (cdr '(2 3)) devuelve 3, por lo que
                                    ; el resultado es 5

((car (list + - * /)) 2 3) ; toma la operacion + de la lista por el car y luego se la aplica a (2 3),
                           ; resultando en 5


