[Primero, Segundo | Cola] = [antonio, luis,andrea, marta, pepe].
Primero = antonio.
Segundo = luis.
Cola = [andrea, marta, pepe].

member(Elemento, [Elemento | Cola]).
member(Elemento, [Cabeza | Cola]) :- member(Elemento, Cola).

deleteAll([], , []).
deleteAll([Cabeza | Cola], Elemento, Resultado) :-Cabeza = Elemento, deleteAll(Cola, Elemento,Resultado).
deleteAll([Cabeza | Cola], Elemento, [Cabeza |Resultado]) :- dif(Cabeza, Elemento), deleteAll(Cola,Elemento, Resultado).

append([], Lista, Lista).
append([Cabeza | Cola], Lista,[Cabeza |ColaResultado]) :- append(Cola, Lista,ColaResultado).

nth0(?Index, ?List, ?Elem).
nth1(?Index, ?List, ?Elem).

