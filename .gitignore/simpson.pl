

% con un parametro

% esTio(Alguien) :- hermanoConHijo(Alguien).
% hermanoConHijo(Alguien) :- esHermano(Alguien,Hermano) , esPadre(Hermano,_).
esHermano(Alguien,Otro) :- esPadre(Padre,Alguien) , esPadre(Padre,Otro).


% con dos parametros

esTio2(Alguien,Sobrino) :- hermanoConHijo(Alguien,Sobrino).
hermanoConHijo(Alguien,Sobrino) :- esHermano(Alguien,Hermano) , esPadre(Hermano,Sobrino).

esHijoUnico(Alguien) :- not(esHermano(Alguien,_))

esHijoUnico(Alguien) :- 
                    hijoDe(Alguien,_),
                    not (esHermano(Alguien,_)).

% hechos:
esPadre(homero,bart).
esPadre(homero,maggie).
esPadre(ned,rod).
esPadre(ned,tod).
esPadre(homero, lisa).
esPadre(abe,herbert).
esPadre(abe, homero).
esPadre(marge,maggie).
esPadre(marge, lisa).
esPadre(marge,bart).
esHermano(bart,lisa).
