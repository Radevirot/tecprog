; Guía 2 Ejercicio 3
; a
(let ((x 'a) (y 'b)) (list (let ((x 'c)) (cons x y)) (let ((y 'd)) (cons x y))))

; Reescritura
; x=a, y=b, z=c, w=d
(let ((x 'a) (y 'b)) (list (let ((z 'c)) (cons z y)) (let ((w 'd)) (cons x w))))

; b
(let ((x '((a b) c))) ; De acá para abajo x = ((a b) c)
  (cons
   (let ((x (cdr x)))(car x)) ; Este let hace que x = (c)
   (let ((x (car x))) ; x = (a b)
     (cons
      (let ((x (cdr x)))(car x)) ; x = (b)
      (cons
       (let ((x (car x)))x) ; x = a
       (cdr x))))))




; Reescritura
(let ((x '((a b) c))) ; De acá para abajo x = ((a b) c)
  (cons
   (let ((y (cdr x)))(car y)) ; Este let hace que y = (c)
   (let ((z (car x))) ; z = (a b)
     (cons
      (let ((w (cdr z)))(car w)) ; w = (b)
      (cons
       (let ((v (car z)))v) ; v = a
       (cdr z))))))

  


