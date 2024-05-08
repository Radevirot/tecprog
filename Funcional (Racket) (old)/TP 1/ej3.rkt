(car (car '((a b) (c d)))); devuelve a
(car (cdr (car '((a b) (c d))))); devuelve b
(car (car (cdr '((a b) (c d))))); devuelve c
(car (cdr (car (cdr '((a b) (c d)))))); devuelve d