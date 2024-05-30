padre(leoncio, alberto).
padre(leoncio, geronimo).
padre(alberto, juan).
padre(alberto, luis).
padre(geronimo, luisa).
hermano(A, B) :- padre(P, A), padre(P, B), A \= B.
nieto(A, B) :- padre(A, P), padre(P, B). % B es nieto de A.


% a) padre(alberto, luis). => true.
% b) padre(luis, alberto). => false.
% c) hermano(luis, X). => X = juan ; false.
% d) nieto(X, luisa). => X = leoncio ; false.
% e) nieto(X, Y). => X = leoncio, Y = juan ; X = leoncio, Y = luis ; X = leoncio, Y = luisa ; false.