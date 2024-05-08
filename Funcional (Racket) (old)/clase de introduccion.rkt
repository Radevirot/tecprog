"hola"
42
22/7
3.1415
+
'+
(+ 76 5)
(< 4 5)
(> 4 5)
'(a b c d)

"Definir funcion propia"

(define cuadrado
  (lambda (n)
   (* n n)))

(cuadrado 16)

"----- LISTAS -----"
; PROPIAS
(car' (a b c d)) ;devuelve tope de lista
(cdr' (a b c d)) ;devuelve cola de lista (lo que no sea el tope)
(car' ((a b) (c d)))
(caar' ((a b) (c d)))
(cdar' ((a b) (c d)))

(cons 'a '(b c)) ;crea una lista (a b c), el segundo parámetro tiene que ser una lista para que la resultante sea propia
(cons '(a b) '(c d))
(cons 'b '(c d))
(cons 'a '(b c d))

; IMPROPIAS
(cons 'a 'b) ;lista impropia


;?
(cdr (list + - * /))
(car (cdr (list + - * /))
     
((car (cdr (list + - * /))) 17 5)