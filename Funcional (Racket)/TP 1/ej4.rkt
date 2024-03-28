(cdr (cdr '((a b) (c d)))); lista vacia
(cdr (cdr (car (cdr '((a b) (c d)))))); lista vacia
(cdr (cdr (car '((a b) (c d))))); lista vacia
(cdr (car '((a b) (c d)))); devuelve una lista con b
(car '((a b) (c d))); devuelve una lista con a y b
(cdr '((a b) (c d))); devuelve una lista que tiene una lista con c y d
(car (cdr '((a b) (c d)))); devuelve una lista con c y d
(cdr (car (cdr '((a b) (c d))))); devuelve una lista con d
(car (car '((a b) (c d)))); devuelve a
(car (cdr (car '((a b) (c d))))); devuelve b
(car (car (cdr '((a b) (c d))))); devuelve c
(car (cdr (car (cdr '((a b) (c d)))))); devuelve d