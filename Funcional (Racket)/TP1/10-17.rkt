;------------ 10

(define largo (lambda (ls) (if (null? ls) 0 (+ 1 (largo (cdr ls))))))
(largo '(1 4 6 8 3 8))

;------------ 11

(define count (lambda (e ls) (if (null? ls) 0 (if (eq? e (car ls)) (+ 1 (count e (cdr ls))) (count e (cdr ls))))))
(count 3 '(1 2 3 4 5 4 3 2 1 ))

;------------ 12

(define subst (lambda (in out ls) (if (null? ls) ls (if (eq? in (car ls)) (cons out (subst in out (cdr ls))) (cons (car ls) (subst in out (cdr ls)))))))
(subst 'c 'k '( c o c o n u t))

;------------ 13

(define make-list (lambda (e n) (if (= n 0) '() (cons e (make-list e (- n 1))))))
(make-list 'A 5)
(define eliminar (lambda (e ls) (if (null? ls) ls (if (eq? e (car ls)) (eliminar e (cdr ls)) (cons (car ls) (eliminar e (cdr ls)))))))
(define agrupar (lambda (ls) (if (null? ls) ls (cons (make-list (car ls) (count (car ls) ls)) (agrupar (eliminar (car ls) ls))))))
(agrupar '(A A B C A B A D C))

;------------ 14

(define conc (lambda (l1 l2) (if (null? l2) l2 (if (null? l1) (cons (car l2) (conc l1 (cdr l2))) (cons (car l1) (conc (cdr l1) l2))))))
(conc '(1 2 3) '(4 5 6))

;------------ 15

(define firstnumber (lambda (ls) (if (null? ls) "null" (if (number? (car ls)) (car ls) (firstnumber (cdr ls))))))
(firstnumber '((1 . 2) 'a (b) (5) 6 8 'a 9))

;------------ 16 (de dos formas distintas pq no entiendo la consigna xd)

(define attach-at-end (lambda (e ls) (if (null? ls) (list e) (cons (car ls) (attach-at-end e (cdr ls))))))
(define delete-attach (lambda (e ls) (if (null? ls) (list e) (if (eq? e (car ls)) (delete-attach e (cdr ls)) (cons (car ls) (delete-attach e (cdr ls)))))))
(attach-at-end 'prueba '(esto es una))
(delete-attach 'función '(creo que función funciona la))

;------------ 17 (capaz sean demasiadas sub-funciones, la verdad no tengo idea, pero funciona...)

(define boolstr->number (lambda (e) (if (eq? e "V") 1 (if (eq? e "F") 0 "null"))))
(define conv-dls (lambda (ls) (if (null? ls) ls (cons (abs (car ls)) (conv-dls (cdr ls))))))
(define conv-tls (lambda (ls) (if (null? ls) ls (cons (abs (string->number (car ls))) (conv-tls (cdr ls))))))
(define conv-bls (lambda (ls) (if (null? ls) ls (cons (boolstr->number (car ls)) (conv-bls (cdr ls))))))
(define conv-single-list (lambda (ls) (if (eq? "D" (car ls)) (conv-dls (cadr ls)) (if (eq? "T" (car ls)) (conv-tls (cadr ls)) (if (eq? "B" (car ls)) (conv-bls (cadr ls)) "null"))))) 
(define convdatos (lambda (ls) (if (null? ls) ls (cons (conv-single-list (car ls)) (convdatos (cdr ls))))))
(convdatos '(
("D" (1 2 3 4 5))
("T" ("6" "7" "8"))
("B" ("V" "F"))
))

;----------- 19


(define pesopalabra (lambda (ls) (if (null? ls) 0 (+ (char->integer (car ls)) (pesopalabra (cdr ls))))))
(define es_menor_palabra (lambda (palabra1 palabra2) (if (<= (pesopalabra (string->list palabra1)) (pesopalabra (string->list palabra2))) true false)))
(define menor_palabra_lista (lambda (ls e) (if (null? ls) e (if (es_menor_palabra (car ls) e) (menor_palabra_lista (cdr ls) (car ls)) (menor_palabra_lista (cdr ls) e))) ))
; defino un eliminar, ya está hecho más arriba
(define ordenar_palabras (lambda (ls) (if (null? ls) ls (cons (menor_palabra_lista ls "ááááááááááá") (ordenar_palabras (eliminar (menor_palabra_lista ls "ááááááááááá") ls)) )) ))











































