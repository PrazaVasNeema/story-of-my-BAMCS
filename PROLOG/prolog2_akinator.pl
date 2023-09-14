gender(harry,0).
gender(hermiona,1).
gender(ron,0).
gender(albusd,0).
gender(hagrid,0).
gender(malfoy,0).
gender(belatris,1).
gender(petunia,1).

magic(harry,0).
magic(hermiona, 1).
magic(ron, 0).
magic(albusd,0).
magic(hagrid,0).
magic(malfoy,0).
magic(belatris,1).
magic(petunia,1).

scar(harry,1).
scar(hermiona,0).
scar(ron,0).
scar(albusd,1).
scar(hagrid,0).
scar(malfoy,0).
scar(belatris,0).
scar(petunia,0).

mark(harry,0).
mark(hermiona,0).
mark(ron,0).
mark(albusd,2).
mark(hagrid,0).
mark(malfoy,2).
mark(belatris,1).
mark(petunia,1).

side(harry,0).
side(hermiona,0).
side(ron,0).
side(albusd,2).
side(hagrid,0).
side(malfoy,2).
side(belatris,1).
side(petunia,1).

grad(harry,0).
grad(hermiona,0).
grad(ron,0).
grad(albusd,1).
grad(hagrid,1).
grad(malfoy,0).
grad(belatris,1).
grad(petunia,0).

q1(X1):-write("Какого пола персонаж?"), nl, write("0 - м"), nl, write("1 - ж"),
    nl, read(X1).
q2(X2):-write("Волшебник, полукровка или магл"), nl, write("0 - волшебник"), nl, write("1 - полукровка"), nl, write("2 - магл"),
    nl, read(X2).
q3(X3):-write("Есть ли шрам?"), nl, write("0 - есть"), nl, write("1 - нету"),
    nl, read(X3).
q4(X4):-write("Есть ли метка?"), nl, write("0 - есть"), nl, write("1 - нету"),
    nl, read(X4).
q5(X5):-write("К какой стороне относится?"), nl, write("0 - добро"), nl, write("1 - зло"), nl, write("2 - неопределенно"),
    nl, read(X5).
q6(X6):-write("Закончил ли школу?"), nl, write("0 - да"), nl, write("1 - нет"),
    nl, read(X6).

res:-q1(X1),q2(X2),q3(X3),q4(X4),q5(X5),q6(X6),gender(X,X1), magic(X,X2), scar(X,X3), mark(X,X4), side(X,X5), grad(X,X6),write(X).

res2:-q1(X1), ((findall(X,gender(X,X1),L), length(L, N), N==1, nl, write(L),
               nl, abort()); true),
    q2(X2), ((findall(X, (gender(X,X1), magic(X,X2)), L), length(L, N), N==1, nl, write(L),
               nl, abort()); true),
             q3(X3), ((findall(X, (gender(X,X1), magic(X,X2), scar(X,X3)), L), length(L, N), N==1, nl, write(L),
               nl, abort()); true),
                      q4(X4), ((findall(X, (gender(X,X1), magic(X,X2), scar(X,X3), mark(X,X4)), L), length(L, N), N==1, nl, write(L),
               nl, abort()); true),
                               q5(X5), ((findall(X, (gender(X,X1), magic(X,X2), scar(X,X3), mark(X,X4), side(X,X5)), L), length(L, N), N==1, nl, write(L),
               nl, abort()); true),
                                        q6(X6), ((findall(X, (gender(X,X1), magic(X,X2), scar(X,X3), mark(X,X4), side(X,X5), grad(X,X6)), L), length(L, N), N==1, nl, write(L),
               nl, abort()); true).



