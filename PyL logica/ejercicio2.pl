tieneGato(martin).
tieneGato(diego).

tienePerro(martin).
tienePerro(daniel).

esFeliz(Persona) :- 
    tieneGato(Persona),
    tienePerro(Persona).