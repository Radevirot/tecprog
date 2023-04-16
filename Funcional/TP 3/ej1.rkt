; Guía 3 Ejercicio 1
; (Se reemplazó 'lambda' por 'λ', que es lo mismo)

; Condición de corte: que x sea 0 o menor, en tal caso retornar 1.
; Paso recursivo: multiplicar a x por el factorial de si mismo menos 1.

(define fact (λ (x) (if
                     (<= x 0)
                     1
                     (* x (fact (- x 1))))))


; Guía 3 Ejercicio 2

; Condición de corte: que la lista esté vacía.
; Paso recursivo: definir una variable que almacene el largo, y que el valor de esta sea el largo de la cola de la
; lista + 1.

(define largo (λ (ls) (if
                       (null? ls)
                       0
                       (let ((ln (+ 1 (largo (cdr ls))))) ln)
                       )))

; Guía 3 Ejercicio 3

; Condición de corte: que la lista esté vacía.
; Paso recursivo: en la asignación de ocurrencias, si el primer elemento coincide con el solicitado, se le suma
; 1 a la cantidad de elementos contados de la cola de la lista, si no, se le asignan la cantidad de elementos
; contados de la cola de la lista sin sumar nada.

(define count-elem (λ (elem lista) (if
                              (null? lista)
                              0
                              (let ((ocurrencias (if
                                                  (= (car lista) elem)
                                                  (+ 1 (count-elem elem (cdr lista)))
                                                  (count-elem elem (cdr lista))))) ocurrencias))))

; Guía 3 Ejercicio 4

(define subst (λ (in out lista) (cons (if
                                       (= (car lista) in)
                                       out) )))






















