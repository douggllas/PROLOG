%Cadastrando a arvore dos Simpsons
progenitor(abraham,homer).
progenitor(abraham,herbert).
progenitor(abraham,abbey).
progenitor(clancy,marge).
progenitor(clancy, selma).
progenitor(clancy,patty).
progenitor(homer, bart).
progenitor(homer, lisa).
progenitor(homer, maggie).
progenitor(marge,bart).
progenitor(marge, lisa).
progenitor(marge,maggie).
progenitor(mona,homer).
progenitor(jacqueline, marge).
progenitor(jaqueline,selma).
progenitor(jacqueline, patty).

%Declarando o sexo FEMININO
sexo(mona,feminino).
sexo(abbey, feminino).
sexo(jacqueline, feminino).
sexo(marge,feminino).
sexo(selma, feminino).
sexo(patty, feminino).
sexo(lisa, feminino).
sexo(maggie, feminino).
sexo(ling,feminino).

%Declarando o sexo MASCULINO
sexo(abraham, masculino).
sexo(clancy, masculino).
sexo(herbert, masculino).
sexo(homer, masculino).
sexo(bart, masculino).

%Algoritmo para identificar irma
irma(X,Y):-progenitor(A,X), progenitor(A,Y),X\==Y,sexo(X,feminino).

%Algoritmo para identificar irmao
irmao(X,Y):-progenitor(A,X),progenitor(A,Y),X\==Y,sexo(X,masculino).

%Declarando Pai e Mae
mae(X,Y):-progenitor(X,Y),sexo(X,feminino).
pai(X,Y):-progenitor(X,Y),sexo(X,masculino).

%Declarando homem e Mulher
homem(X):-sexo(X,masculino).
mulher(X):-sexo(X,feminino).

%Declarando Avô:
avo(X,Y):-progenitor(X,A),progenitor(A,Y), sexo(X,masculino).
avoh(X,Y):-progenitor(X,A),progenitor(A,Y),sexo(X,feminino).

%Declarando Filho
filho(Y,X):-progenitor(X,Y),sexo(Y,masculino).

%Declarando Tio
tio(X,Y):-irmao(X,I),progenitor(I,Y),sexo(X,masculino).

%Declarando prima
prima(X,Y):-progenitor(A,Y),irmao(Y,A),sexo(X,feminino).
%X é prima de Y, quando X for filha do irmao do pai de Y

