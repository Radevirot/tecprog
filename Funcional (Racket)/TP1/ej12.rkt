
(define subst (lambda (in out ls) (if (null? ls) '() (if (equal? in (car ls)) (cons out (subst in out (cdr ls))) (cons (car ls) (subst in out (cdr ls))) ))))
;si son iguales los elementos concateno el nuevo símbolo con la función recursiva
;que usa la cola de la lista, si son distintos concateno el mismo elemento actual
;con la misma función recursiva.

(subst 'c 'k '( c o c o n u t))
