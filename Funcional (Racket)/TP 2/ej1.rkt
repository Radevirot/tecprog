;Ejercicio 1 de la guía 2:

;a
(+ (/ (* 7 a) b) (/ (* 3 a) b) (/ (* 7 a) b))

;subexpresión simplificada: (/ (* 7 a) b)
(let ((x (/ (* 7 a) b)) (+ x x (/ (* 3 a) b))))

;b
(cons (car (list a b c)) (cdr (list a b c)))

;subexpresión simplificada: (list a b c)
(let ((x (list a b c))) (cons (car x) (cdr x)))
