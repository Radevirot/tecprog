; Guía 2 Ejercicio 10
; (Se reemplazó la palabra lambda por λ, que es lo mismo)

; Primero, asignamos cada elemento de la lista a una variable, luego, asignamos las restas a
; otras dos variables (dx = x2-x1 , dy = y2-y1), luego, hacemos la fórmula de la distancia,
; que es la raíz de la suma de ambas diferencias elevadas al cuadrado. (en este caso se
; multiplican por sí mismas)

(define distance2d (λ (xy1 xy2)
                     (let
                         ((x1 (car xy1)) (y1 (cdr xy1)) (x2 (car xy2)) (y2 (cdr xy2)))
                       (let ((dx (- x2 x1)) (dy (- y2 y1)))
                         (sqrt (+ (* dx dx) (* dy dy)))))))


; Guía 2 Ejercicio 11

; Para esta función es necesario utilizar recursividad, ya que es la única forma que tenemos
; de recorrer toda la lista de puntos.
; Definimos d1 como la distancia del primer punto de la lista Pl al punto de interés P,
; si el largo de la lista de puntos es 1, entonces mostramos su distancia, sino asignamos
; una segunda distancia, que sea la distancia entre el punto P y el punto más próximo de lo
; que resta de la lista Pl (que es donde se utiliza la recursividad), luego, si el punto que
; obtuvimos es menor que el que ya tenemos, nos quedamos con ese, sino seguimos con el que ya
; teníamos.
; La recursividad se corta cuando la lista tiene un único elemento.

(define próximo (λ (P Pl) (let ( (d1 (distance2d P (car Pl))))
                                 (if (= (length Pl) 1)
                                     d1
                                     (let ((d2 (próximo P (cdr Pl))))
                                       (if (< d2 d1)
                                           d2
                                           d1)
                                       )
                                     )
                                 )
                            )
                  )

