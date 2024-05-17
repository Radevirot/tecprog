(define count-elem (lambda (elem ls) (if (null? ls) 0 (if (= elem (car ls)) (+ (count-elem elem (cdr ls)) 1) (+ (count-elem elem (cdr ls)) 0)))))

(count-elem 3 '(1 2 3 4 5 4 3 2 1 ))

