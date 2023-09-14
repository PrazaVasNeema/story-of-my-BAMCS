parent(bob, yana).
parent(karla, yana).
parent(jim, bob).
parent(sasha, bob).
parent(jenya, karla).
parent(tosha, karla).
child(X,Y):-parent(Y,X).
male(bob).
male(jim).
male(tosha).
female(yana).
female(karla).
female(sasha).
female(jenya).
mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
mother(X):-parent(Y,X),female(Y), write(Y).
father(X):-parent(Y,X),male(Y),write(Y).
parent(X):-parent(Y,X),write(Y),nl,fail.

daughter(X,Y):-parent(Y,X),female(X).
daughter(X):-parent(X,Y), female(Y), write(Y).
