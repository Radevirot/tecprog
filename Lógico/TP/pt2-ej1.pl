entrada('Bombones de jamon').
entrada('Tarta de atun').
entrada('Buñuelos de bacalao').
principal('Locro').
principal('Atados de repollo').
principal('Matambre con espinacas y parmesano').
postre('Dulce de batata').
postre('Flan').
postre('Brownie con helado de dulce de leche').

carta(X, Y, Z) :- entrada(X), principal(Y), postre(Z).