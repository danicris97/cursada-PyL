gustaDe(luis, nora).
gustaDe(roque, nora).
gustaDe(roque, ana).
gustaDe(marcos, zulema).
gustaDe(X, zulema) :- gustaDe(X, ana).
gustaDe(juan, X) :- gustaDe(roque, X).
gustaDe(X, Y) :- gustaDe(X, ana).
gustaDe(juan, nuria).

compiten(X, Y) :- gustaDe(X, Z), gustaDe(Y, Z).

debeDinero(juan, marcos).
debeDinero(juan, roque).