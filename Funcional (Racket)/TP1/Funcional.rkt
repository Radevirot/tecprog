;EJERCICIO 1

(+ 7 (* 2 -1/3) -10.7) ;-4,36666666

(/ (* 7/3 5/9) (- 5/8 2/3)) ;-31+1/9

(+ 1 (/ 3 (+ 2 (/ 1 (+ 5 1/2))))) ;2+3/8 

(* 1 -2 3 -4 5 -6 7) ;-5040

;EJERCICIO 2

;cons construye una lista. El 1er valor debe ser el elem y el 2do una lista
;listas propias -> finalizan con una lista vacía '()
;listas impropias -> finalizan con el último elemento de la misma

(cons 'car '+) ;(car . +)

(list 'esto '(es muy facil)) ;(esto (es muy facil))

(cons 'pero '(se está complicando...)) (cons '(y ahora no se que) 'hizo) (quote (+ 7 2))

(cons '+ '(10 3))

(car '(+ 10 3))

(cdr '(+ 10 3))

cons

(quote (cons (car (cdr (7 4))))) (quote cons)

(car (quote (quote cons))) (quote cons)

(+ '2 '3)

(+ (car '(2 3)) (car (cdr '(2 3)))) ((car(list + - * /)) 2 3)

;EJERCICIO 3

((car (cdr (cdr (list + - * /)))) 5 5)
;-> arma una lista con +, -, * y /
;-> le hace el cdr y queda -, * y /
;-> le hace el cdr y queda * y /
;-> le hace el car y queda *
;-> hace la operación 5*5


;EJERCICIO 4 Obtener el elemento x
;'(a b c .x)
(cdddr '(a b c . x))

;'(a b c x)
(car(cdddr '(a b c x)))

;'((a .x) b)
(cdr (car '((a . x) b)))

;'(x .a)
(car '(x . a))

;'(a .x)
(cdr '(a . x))

;EJERCICIO 5
;(let (<cabecera>) (<cuerpo>))
;(let (<cabecera1>((let (<cabecera2>) (<cuerpo>))))) ->forma anidada
;let* permite definir "variables" en función de otras variables en la misma cabecera
;letrec permite definir procedimientos recursivos en la cabecera
; let != let* != letrec (saber la diferencia para teoría/coloquio) 

;(+ (/ (* 7 a) b) (/ (* 3 a) b) (/ (* 7 a) b))
(define a 2)
(define b 5)
(let ((x (/ (* 7 a) b)) (y (/ (* 3 a) b))) ;cabecera
  (+ x y x)) ;cuerpo

;(cons (car (list a b c)) (cdr (list a b c)))
(let* ((x '(a b c))) (cons (car x) (cdr x))) ;cabecera

;EJERCICIO 6
(let ((x 9))
  (* x
     (let ((x (/ x 3)))
       (+ x x))))

;-> define x=9
;-> multiplica x por otro let
;-> define otro let
;-> redefine x como x/3 , o sea x=3
;-> hace en el cuerpo del primer let x+x = 3+3 = 6
;-> multiplica por x que valía 9, o sea 54

;EJERCICIO 7
;lenght(...) ->devuelve la longitud del argumento, que debe ser una lista
(define (mascorta lista1 lista2)
  (if (<= (length lista1) (length lista2))
      lista1
      lista2))
(displayln (mascorta '(a b) '(c d e))) ; output (a b)
(displayln (mascorta '(a b) '(c d))) ; output (a b)
(displayln (mascorta '(a b) '(c))) ; output (c)

;EJERCICIO 8
(define area (lambda (radio)
  (* pi radio radio)))
(displayln (area 3)) 
(displayln (area 10))

;EJERCICIO 9
(define (distancia2d punto1 punto2) ;punto1 y punto2 son listas impropias
  (define x1 (car punto1))
  (define y1 (cdr punto1))
  (define x2 (car punto2))
  (define y2 (cdr punto2))
  (sqrt(+ (sqr (- x2 x1)) (sqr (- y2 y1)))))
(displayln (distancia2d '(1 . 1) '(2 . 2)))
(displayln (distancia2d '(0 . 0) '(0 . 1)))

;EJERCICIO 10
;la RECURSIVIDAD se produce cuando un procedimiento se llama a si mismo
;la recursividada va de atrás para adelante -> función de otra función
;hay que usar LAMBDA si o si para definir un procedimiento 
(define largo (lambda(lista)
                (if (null? lista)
                    0 ;paso base 
                    (+ 1 (largo (cdr lista)))
                    )
                )
  )
;paso recursivo
(displayln (largo '(a b c)))

;EJERCICIO 11
(define (count-elem elemento lista)
  (cond ((null? lista) 0)                ; si la lista está vacía el contador es 0 -> paso base
        ((eq? (car lista) elemento)      ; si el primer elemento es igual al elemento buscado
         (+ 1 (count-elem elemento (cdr lista))))  ; incrementa el contador y busca en el resto de la lista -> paso recursivo
        (else                           ; sino busca en el resto de la lista
         (count-elem elemento (cdr lista))))) ; busca en el resto de la lista

(displayln (count-elem 3 '(1 2 3 1 2 3 1 1)))

;EJERCICIO 12
;función LAMBDA define funciones anónimas, generalmente auxiliares
;(lambda (argumentos) procedimiento)
;MAP aplica el procedimiento a cada elemento de la lista y devuelve una lista con los resultados
;(map (procedimiento) (lista))

(define (subst valor1 valor2 lista)
  (map (lambda (elem)           ; para cada elemento de la lista
         (if (equal? elem valor1) ; si el elemento es igual al valor a reemplazar
             valor2             ; lo cambio por el valor que reemplaza
             elem))             ; sino lo dejo igual
       lista))                  ; aplico la función a la lista

(displayln (subst 'c 'k '(c o c o n u t))) ; output (k o k o n u t)

;EJERCICIO 13 
;definir procedimiento contar-elemento (elemento, lista) recursivamente
;definir procedimiento eliminar-elemento (elemento, lista) recursivamente
;definir una función wrapper agrupar (lambda lista) que aplique las dos anteriores

;función auxiliar para contar la cantidad de elementos distintos de la lista
(define contar
  (lambda (x lista)
    (if (null? lista)
        0
        (if (eq? (car lista) x)
            (+ (contar x (cdr lista)) 1)
            (contar x (cdr lista))
            )
        )
    )
  )

;función auxiliar para eliminar un elemento de la lista
(define eliminar
  (lambda (x lista)
    (if (null? lista)
        lista
        (if (eq? x (car lista))
            (eliminar x (cdr lista)) ; se ignora el elemento a eliminar y se contruye la lista sin ese elemento
            (cons (car lista) (eliminar x (cdr lista)))
            )
        )
    )
  )
;wrapper
(define agrupar
  (lambda (lista)
    (if (null? lista)
        lista
        (cons (vector->list (make-vector (contar (car lista) lista) (car lista))) (agrupar (eliminar (car lista) lista)))
        )
    )
  )
(displayln (contar 3 '(1 2 3 3)))
(displayln (eliminar 3 '(1 2 3 3)))
(displayln (agrupar '(A A B C A B A D C)))

;EJERCICIO 14
(define (concatenar lista1 lista2)
  (if (null? lista1) ; si la primera lista está vacía 
      lista2 ; devuelvo la segunda -> paso base 
     (cons (car lista1) ; si la primera lista no está vacía creo una lista 
        (concatenar (cdr lista1) lista2)))) ; concateno con el cdr -> paso recursivo

(displayln (concatenar '(1 2 3) '(4 5 6)))


;EJERCICIO 15
(define (primer-num lista)
  (cond ((null? lista)
         'null)      ; si la lista está vacía devuelvo null -> paso base
        ((number? (car lista))
         (car lista)) ; si el primer elemento es un número lo devuelvo
        (else
         (primer-num (cdr lista))))); busco en el resto de la lista -> paso recursivo

(displayln (primer-num '(a b c 1 2 3 c d))) ; output 1
(displayln (primer-num '(a b c d e f g))) ; output null
(displayln (primer-num '(9 a a a))) ; output 9

;EJERCICIO 16
(define (attach-at-end valor lista)
  (if (null? lista)
      (list valor) ; si la lista está vacía devuelve una lista con el valor -> paso base
      (cons (car lista) ; si la lista no está vacía conservo el primer elemento 
            (attach-at-end valor (cdr lista))))) ; itero con el resto de la lista para agregar el valor al final -> paso recursivo

(displayln (attach-at-end 'prueba '(esto es una))) ; output (esto es una prueba)
(displayln(attach-at-end '(un solo valor) '())) ;output (un solo valor)


;#(1 2 3) -> vector
;'(1 2 3) -> lista (recomendable)
;(vector->list vector) convierte el vector en lista
;(list->vector list) convierte la lista en vector


;EJERCICIO 17

;(define (convdatos lista-de-listas); 1er elem contenido (texto, decimal, booleano), 2do elem lista de datos
                                   ; convertir los elementos a decimal y positivos
(define val-abs
  (lambda (n)
    (if (< n 0)
        (- 0 n)
        n
        )
    )
  )

(define conv-datos-d
  (lambda (lista)
    (let ((p (car lista)) (q (cdr lista)))
      (if (null? q)
          (cons (val-abs p) ()) ; paso base
          (cons (val-abs p) (conv-datos-d q)) ; paso recursivo
          )
      )
    )
  )

(define conv-datos-t
  (lambda (lista)
    (let ((p (car lista)) (q (cdr lista)))
      (if (null? q)
          (cons (string->number p) ()) ; paso base
          (cons (string->number p) (conv-datos-t q)) ; paso recursivo
          )
      )
    )
  )

(define conv-datos-b
  (lambda (lista)
    (let ((p (car lista)) (q (cdr lista)))
      (if (eq? "V" p)
          (if (null? q)
              (cons 1 '()) ; paso base para p=true
              (cons 1 (conv-datos-b q))) ; paso recursivo para p=true
          (if (null? q) ;else
              (cons 0 '()) ; paso base para p=false
              (cons 0 (conv-datos-b q)) ; paso recursivo para p=false
              )
          )
      )
    )
  ) 


(define conv-datos-tipo
  (lambda (elem lista)
    (cond
      ((eq? elem "D") (conv-datos-d lista))
      ((eq? elem "T") (conv-datos-t lista))
      ((eq? elem "B") (conv-datos-b lista))
      )
    )
  )

(define conv-datos
  (lambda (lista)
    (if (null? lista)
        lista
        (let ((p (car lista)) (q (cdr lista)))
          (if (null? q)
              (cons (conv-datos-tipo (car p) (cadr p)) ()) ;cadr toma el segundo elemento
              (cons (conv-datos-tipo (car p) (cadr p)) (conv-datos q))
              )
          )
        )
    )
  )
      

(displayln (conv-datos '(("D" (1 2 3 4 5)) ("T" ("6" "7" "8")) ("B" ("V" "F"))))) ;revisar para el formato booleano

;EJERCICIO 18

(define-struct punto (x y))

(define distancia
  (lambda (punto1 punto2)
    (sqrt(+ (sqr (- (punto-x punto2) (punto-x punto1))) (sqr (- (punto-y punto2) (punto-y punto1)))))
    )
  )


(define punto1 (make-punto 0 0))
(define punto2 (make-punto 1 1))
(displayln (distancia punto1 punto2))

;EJERCICIO 19

;función para obtener el peso de cada palabra
(define peso-palabra-aux
  (lambda (lista)
    (if (null? lista)
        0
        (let ((p (car lista)) (q (cdr lista)))
          (+ (char->integer p) (peso-palabra-aux q)) ;paso char a integer para obtener el peso ascii de cada caracter
          )
        )
    )
  )

;wrapper peso-palabra
(define peso-palabra
  (lambda (str)
    (peso-palabra-aux (string->list str)) ;paso string a list para operar con car y cdr
    )
  )


;función para encontrar el elemento de menor peso
(define menor-peso
  (lambda (lista)
    (if (null? lista)
        ()
        (let ((p (car lista)) (q (cdr lista)))
          (if (null? q)
              p
              (if (< (peso-palabra p) (peso-palabra (car q)))
                  (menor-peso (cons p (cdr q))) 
                  (menor-peso q)
                  )
              )
          )
        )
    )
  )

(define eliminar
  (lambda (x lista)
    (if (null? lista)
        lista
        (if (eq? x (car lista))
            (eliminar x (cdr lista)) ; se ignora el elemento a eliminar y se contruye la lista sin ese elemento
            (cons (car lista) (eliminar x (cdr lista)))
            )
        )
    )
  )

(displayln (eliminar 2 '(1 2 3 1 2)))


;construyo la lista con el elemento de menor peso, lo elimino e itero nuevamente 
(define ordenar
  (lambda (lista)
    (if (null? lista)
        ()
        (cons (menor-peso lista) (ordenar (eliminar (menor-peso lista) lista)))
        )
    )
  )

(displayln  (ordenar '("moto" "auto" "casa" "juego" "aire"))) ; output (casa aire auto moto juego)
         
;EJERCICIO 20

(define full-reverse-list-aux
  (lambda (elem lista)
    ;elem es la acumulación de elementos que se están invirtiendo
    ;lista es la lista que se está procesando
    (if (null? lista)
        elem ;condición de corte
        (let ((p (car lista)) (q (cdr lista)))
          (if (list? p)
              (full-reverse-list-aux (cons (full-reverse-list p) elem) q) ;si p SI ES una lista se llama recursivamente a full-reverse-list
                                                                          ;para invertir p antes de concatenar con elem
              
              (full-reverse-list-aux (cons p elem) q) ;si p NO ES una lista se concatena p a elem y se ejecuta recursivamente
              )
          )
        )
    )
  )

;wrapper
(define full-reverse-list
  (lambda (lista)
    (if (null? lista)
        lista
        (full-reverse-list-aux '() lista) ;elem es la lista vacía como acumulador inicial
        )
    )
  )

(displayln (full-reverse-list '(1 (2 3 4 (4 5) (3 (5 6)) 4)))); output ((4 ((6 5) 3) (5 4) 4 3 2) 1)

;EJERCICIO 21
;...

;EJERCICIO 22

;unción auxiliar para ver si es un elemento
(define elem
  (lambda (x)
    (not (list? x))
    )
  )

  
(define app2list
  (lambda (elem1 elem2)
    (cond
      ;elem1 y elem2 listas
      [(and (list? elem1) (list? elem2));-> juntar las listas
       (concatenar elem1 elem2)] ;función concatenar del ej14
      ;elem1 elemento, elem2 lista    
      [(and (elem elem1) (list? elem2)) ;-> agregar el elemento a la lista
       (cons elem1 elem2)]
      ;elem1 lista, elem2 elemento     
      [(and (list? elem1) (elem elem2)) ;-> agregar el elemento a la lista
       (attach-at-end elem2 elem1)] ;función attach-at-end del ej16
      ;elem1 y elem2 elementos     
      [(and (elem elem1) (elem elem2)) ;-> crea y devuelve una lista
       (cons elem1 (cons elem2 '()))]
           
      )
    )
  )

(displayln (app2list '(1 2 3) '(4 5 6))) ;elem1 y elem2 listas
(displayln (app2list 1 '(4 5 6))) ;elem1 elemento, elem2 lista  
(displayln (app2list '(1 2 3) 4)) ;elem1 lista, elem2 elemento
(displayln (app2list 1 2)) ;elem1 y elem2 elementos    
  





         
  
  


   
         



