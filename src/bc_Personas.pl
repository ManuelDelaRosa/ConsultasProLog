mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(deysi).
mujer(vanessa).
mujer(martha).
mujer(romina).

hombre(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan).
hombre(pedro).
hombre(raul).
hombre(gerardo).
hombre(sergio).

madre(ana, rocio).
madre(ana, maria).
madre(ana, luis).
madre(martha, deysi).
madre(fabiola, romina).
madre(romina, luisa).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gerardo).
padre(marco, romina).
padre(sergio, paco).
padre(hugo, sergio).

%regla para identificar ABUELOS

abuelo(X,Y) :- padre(X, Z),( padre(Z, Y);madre(Z, Y)). %solo muestra a los nietos
					  % modificar para que muetre a las nietas

%abuelo(X,Y) :- padre(X, Z) , madre(Z, Y).
%abuelo(X,Y) :- madre(X, Z) , madre(Z, Y).
%abuelo(X,Y) :- madre(X, Z) , padre(Z, Y).
abuela(X,Y) :- madre(X, Z),( padre(Z, Y);madre(Z, Y)).
persona(X) :- hombre(X) ; mujer(X).
nieto(X,Y) :- padre(Z, X),( padre(Y, Z);madre(Y, Z)).
nieta(X,Y) :- madre(Z, X),( padre(Y, Z);madre(Y, Z)).
	
hermano(X,Y) :-(padre(Z,X),madre(W,X)),hombre(X),(padre(Z,Y),madre(W,Y)),hombre(Y),not(X==Y).
hermana(X,Y) :-(padre(Z,X),madre(W,X)),mujer(X),(padre(Z,Y),madre(W,Y)),mujer(Y),not(X==Y).

pareja(X,Y) :- padre(X,Z) , madre(Y,Z).