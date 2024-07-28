trabaja(maria, ventas).
trabaja(juan, ventas).
trabaja(roque, ventas).
trabaja(nora, compras).
trabaja(pedro, compras).
trabaja(felipe, administracion).
trabaja(hugo, administracion).
trabaja(ana, administracion).

empleado(X) :- trabaja(X, _), not(cadete(X)).
cadete(X) :- trabaja(X, _), not(empleado(X)).

personas_en_departamento(Departamento, Personas) :-
    findall(Persona, trabaja(Persona, Departamento), Personas).

mismo_departamento(Persona1, Persona2) :-
    trabaja(Persona1, Departamento),
    trabaja(Persona2, Departamento),
    Persona1 \= Persona2.

puede_dar_ordenes(A, B) :-
    empleado(A), cadete(B), mismo_departamento(A, B).