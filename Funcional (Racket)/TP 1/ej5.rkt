(list + - * /) ; partimos de la lista con + - * /
(cdr (list + - * /)) ; aqui la lista resultante es - * /
(cdr (cdr (list + - * /))) ; la lista resultante es * /
(car (cdr (cdr (list + - * /)))) ; se obtiene un procedimiento, el de multiplicacion *
((car (cdr (cdr (list + - * /)))) 5 5) ; se aplica el procedimiento a los valores 5 y 5

