((car (cdr (cdr (list + - * /)))) 5 5)
; primero se crea una lista que contiene los operadores + - * y /, luego se le hacen dos cdr, quedando con una lista con * y /, luego se le hace un car, quedando con la operación * y finalmente aplicándosela a 5 5, es decir, es equivalente a (* 5 5)