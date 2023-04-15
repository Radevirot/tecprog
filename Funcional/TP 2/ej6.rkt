; Guía 2 Ejercicio 6
; (Se reemplazó la palabra lambda por λ, que es lo mismo)

; La función shorter revisa si el largo de la primer lista de entrada es menor o igual al de
; la segunda lista, si lo es, entonces muestra esa lista, si no lo es, muestra la segunda.
(define shorter (λ (l1 l2) (if
                            (<= (length l1) (length l2))
                               l1
                               l2
                            )
                  ))