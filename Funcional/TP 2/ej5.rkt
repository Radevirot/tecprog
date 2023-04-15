; Guía 2 Ejercicio 5
; (Se reemplazó la palabra lambda por λ, que es lo mismo)

; Suponemos que la entrada siempre es ([valor1] [operador] [valor2]), entonces el
; prodecimiento debe reordenar la lista de esos 3 valores de forma que cumpla con
; la sintaxis de Scheme, intercambiando la posición del primer valor con la del
; operador. 'a' y 'b' son los valores de entrada.
(let ((f (λ (v1 op v2) (op v1 v2)))) (f a + b))

; A continuación algunos ejemplos:
(let ((f (λ (v1 op v2) (op v1 v2)))) (f 2 + 5)) ; => 7

(let ((f (λ (v1 op v2) (op v1 v2)))) (f 3 - 1)) ; => 2

(let ((f (λ (v1 op v2) (op v1 v2)))) (f 4 * 3)) ; => 12

(let ((f (λ (v1 op v2) (op v1 v2)))) (f 10 / 2)) ; => 5