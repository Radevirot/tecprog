(define distance2d (lambda (XY1 XY2) (let ( (a (- (car XY2) (car XY1))) (b (- (cdr XY2) (cdr XY1)) )) (sqrt (+ (expt a 2) (expt b 2))))))

(distance2d '(1 . 1) '(2 . 2))