; Guía 2 Ejercicio 7
; (Se reemplazó la palabra lambda por λ, que es lo mismo)

(define area (λ (r) (* pi r r)))

; Guía 2 Ejercicio 8

(define perímetro (λ (r) (* pi 2 r)))

; Guía 2 Ejercicio 9
; Usando las funciones anteriores

(define circlestuff1 (λ (r) (list (area r) (perímetro r))))

; Sin usar las funciones anteriores

(define circlestuff2 (λ (r) (list (* pi r r) (* pi 2 r))))