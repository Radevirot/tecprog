(cons 'car '+) ;res: (car . +)
(list 'esto '(es muy fácil)) ;res: (esto (es muy fácil)) 
(cons 'pero '(se está complicando...)) (cons '(y ahora no se que ) 'hizo) (quote (+ 7 2)) ;res: (pero se está complicando...)
;((y ahora no se que) . hizo)
;(+ 7 2)
(cons '+ '(10 3)) ;res: (+ 10 3)
(car '(+ 10 3)) ;res: +
(cdr '(+ 10 3)) ;res: (10 3)
cons ;res: #<procedure:cons>
(quote (cons (car (cdr (7 4)))) ) (quote cons) ;res: (cons (car (cdr (7 4))))
;cons
(car (quote (quote cons))) (+ 2 3) ;res: quote
;5
(+ '2 '3) ;res: 5
(+ (car '(2 3)) (car (cdr '(2 3)))) ((car (list + - * /)) 2 3) ;res: 5
;5
