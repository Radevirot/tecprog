libro('Rayuela','novela','largo').
libro('Karamazov','novela','largo').
libro('Octaedro','cuento','corto').
libro('Inventario','poema','largo').
libro('Leones','novela','corto').

hombre(pedro).
hombre(livio).
mujer(haydee).
mujer(tania).

abogado(haydee).
abogado(pedro).
ingeniero(haydee).
medico(tania).
contador(livio).

gusta(X, Y) :- abogado(X), libro(Y,'novela','largo') ; ingeniero(X), libro(Y, 'novela', Z) ; medico(X), libro(Y, 'novela', Z) ;
                mujer(X), libro(Y, Z, 'largo') ; contador(X), hombre(X), libro(Y, 'cuento', Z) ; contador(X), hombre(X), libro(Y, 'poema', Z).
gusta(livio, 'Rayuela').