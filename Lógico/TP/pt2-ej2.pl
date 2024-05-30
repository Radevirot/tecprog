mujer(m1).
mujer(m2).
mujer(m3).
mujer(m4).
mujer(m5).
mujer(m6).
mujer(m7).
mujer(m8).
mujer(m9).
mujer(m10).
mujer(m11).
mujer(m12).
hombre(h1).
hombre(h2).
hombre(h3).
hombre(h4).
hombre(h5).
hombre(h6).
hombre(h7).
hombre(h8).
hombre(h9).
hombre(h10).
hombre(h11).

progenitor(m1, m2). % --             ---
progenitor(m1, h2). % /              /
progenitor(m1, m3). % /              /
progenitor(h1, m2). % / hijos m1-h1  / PRIMER NIVEL
progenitor(h1, h2). % /              /
progenitor(h1, m3). % --             ---
                                   
progenitor(h3, m5). % --             ---
progenitor(h3, h5). % / hijos h3-m2  /
progenitor(m2, m5). % /              /
progenitor(m2, h5). % --             /
%                                    /
progenitor(h2, h6). % hijo h2-m4     / SEGUNDO NIVEL
progenitor(m4, h6). %                /
%                                    /
progenitor(m3, h7). % --             /
progenitor(m3, m6). % / hijos m3-h4  /
progenitor(h4, h7). % /              /
progenitor(h4, m6). % --             ---

progenitor(m5, m10). % hijo m5-h8    ---
progenitor(h8, m10). %               /
%                                    /
progenitor(h5, m11). % hijo h5-m7    /
progenitor(m7, m11). %               /
%                                    / PADRES: TERCER NIVEL
progenitor(h6, h10). % hijo h6-m8    /
progenitor(m8, h10). %               /
%                                    /
progenitor(m9, h11). % hijo m9-h7    / HIJOS: CUARTO NIVEL
progenitor(h7, h11). %               /
%                                    /
progenitor(m6, m12). % hijo m6-h9    /
progenitor(h9, m12). %               ---

padre(A, B) :- hombre(A), progenitor(A, B).
madre(A, B) :- mujer(A), progenitor(A, B).
abuelx(A, B) :- progenitor(A, X), progenitor(X, B).
abuelo(A, B) :- hombre(A), abuelx(A, B).
abuela(A, B) :- mujer(A), abuelx(A, B).
hermano(A, B) :- progenitor(X, A), progenitor(X, B), A\=B.
hermano_varon(A, B) :- hombre(A), hermano(A, B).
hermana_mujer(A, B) :- mujer(A), hermano(A, B).
sucesor(A, B) :- progenitor(B, A) ; abuelx(B, A) ; progenitor(B, X), abuelx(X, A).
conyugue(A, B) :- progenitor(A, X), progenitor(B, X).
es_padre(A) :- padre(A, X).
es_madre(A) :- madre(A, X).
tia(A, B) :- progenitor(X, B), hermana_mujer(A, X).
yerno(A, B) :- hombre(A), conyugue(A, X), progenitor(B, X).
nuera(A, B) :- mujer(A), conyugue(A, X), progenitor(B, X).