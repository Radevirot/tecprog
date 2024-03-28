; Guía 2 Ejercicio 4
; (Se reemplazó la palabra lambda por λ, que es lo mismo)

;a
(let ((f (λ (x) x))) (f 'a)) ; => a
; Se le asigna a la variable f un procedimiento que tiene como entrada un único valor
; y lo que hace es mostrar ese valor, por eso devuelve a como elemento.

;b
(let ((f (λ x x))) (f 'a)) ; => (a)
; Se le asigna a la variable f un procedimiento que tiene como entrada una lista de valores, y
; lo que hace es mostrar esa lista de valores, por eso devuelve el elemento 'a' dentro de una
; lista. Si a f le ingresamos más valores de entrada, este retornará la lista con todos los
; valores:
(let ((f (λ x x))) (f 'a 'b 'c)) ; => (a b c)


;c
(let ((f (λ (x . y) x))) (f 'a)) ; => a
; Se le asigna a la variable f un procedimiento que tiene como entrada una lista de valores, y
; lo que hace es mostrar el primer elemento de la lista. ('f' se comporta como 'cdr')

;d.
(let ((f (λ (x . y) y))) (f 'a)) ; => ()
; Se le asigna a la variable f un procedimiento que tiene como entrada una lista de valores, y
; lo que hace es mostrar la cola de la lista. ('f' se comporta como 'car').
; Un ejemplo dándole más valores de entrada a 'f':
(let ((f (λ (x . y) y))) (f 'a 'b 'c)) ; => (b c)
