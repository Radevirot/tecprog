(define largo (lambda (ls) (if (null? ls) 0 (+ (largo (cdr ls)) 1))))

(define crear (lambda (cant simb) (if (= cant 0) '() (cons simb (crear (- cant 1) simb)))))

(define contar (lambda (elem ls) (if (null? ls) 0 (if (equal? elem (car ls)) (+ (contar elem (cdr ls)) 1) (+ (contar elem (cdr ls)) 0)))))

(define eliminar (lambda (elem ls) (if (null? ls) '() (if (equal? (car ls) elem) (eliminar elem (cdr ls)) (cons (car ls) (eliminar elem (cdr ls)))) )))

(define agrupar (lambda (ls) (if (null? ls) '() (cons (crear (contar (car ls) ls) (car ls)) (agrupar (eliminar (car ls) ls))))))

(agrupar '(A A B C A B A D C))