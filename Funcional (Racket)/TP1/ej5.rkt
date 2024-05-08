(let ((a 5) (b 6)) (let ((x (/ (* 7 a) b))) (+ x  (/ (* 3 a) b) x))) ;1

(let ((a 5) (b 6) (c 7)) (let ((x (list a b c))) (cons (car x)(cdr x)))) ;2