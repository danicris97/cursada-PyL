dulce(chocolate).
dulce(caramelo).
dulce(durazno).

amargo(radicheta).
amargo(cebada).

leGusta(roque,chocolate).
leGusta(roque,radicheta).
leGusta(pepe,cebada).

colorDePelo(roque,colorado).
colorDePelo(pepe,castanio).

vive(roque,buenosAires).
vive(pepe,mendoza).
vive(lucas,salliquelo).

ciudadGrande(buenosAires).
ciudadGrande(mendoza).

esTierno(Persona) :- forall(leGusta(Persona,Alimento), dulce(Alimento)).