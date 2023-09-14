
%1
max(X,Y,Z):- X>Y ->  Z is X; Z is Y.

%2
max(X,Y,U,Z):-max(max(X,Y),U,Z).

%3 ВВЕРХ
fact(1,1).
fact(N,X):-N>1, N1 is N-1, fact(N1,X1), X is N*X1.

%4 ВНИЗ
fd1(N,X):-fd(N,X,1,1).
fd(N,X,N,X):-!.
fd(N,X,N1,X1):-N11 is N1+1, X11 is X1*N11, fd(N,X,N11,X11).

%5 ВВЕРХ
fib(1,1).
fib(2,1).
fib(N,X):- N1 is N-1, fib(N1,X1),N2 is N-2,fib(N2,X2), X is X2+X1.

%6 ВНИЗ
fib1(N,R):- fibd(N, 1, 0, 1, R).
fibd(N,N,_,F2,F2):-!.
fibd(N,K,F1,F2,R):- K<N, F is F1+F2,K1 is K+1, fibd(N,K1,F2,F,R).

%7 ВВЕРХ
sum(0,0).
sum(X,S):-X1 is X mod 10,X2 is X div 10, sum(X2,S2), S is X1+S2.

%8 ВНИЗ
sum1(X,S):-X>0, S1 is X mod 10, X1 is X div 10, sum1(X1,S,S1);S is X,!.
sum1(X,S,S1):-X>0,S2 is S1+ X mod 10, X1 is X div 10, sum1(X1,S,S2); S is S1,!.
%9 ВВЕРХ
min_1(N,Min):-N < 10, Min is N,!.
min_1(N,Min):-N>=10,N1 is N mod 10, N2 is N div 10, min_1(N2,Min2),Min2 > N1 ,Min is N1.
min_1(N,Min):-N>=10,N1 is N mod 10, N2 is N div 10, min_1(N2,Min2),Min2 < N1,Min is Min2.

%10 ВНИЗ
mindown(N,N):-N<10,N>0,!.
mindown(N,X):-N1 is N div 10, X1 is N mod 10, X2 is N1 mod 10 , X1<X2, N2 is N1 div 10, mindown(N2,X,X1);
    N1 is N div 10,X1 is N mod 10, X2 is N1 mod 10,X2<X1, N2 is N1 div 10,mindown(N2,X,X2);
    N1 is N div 10,X1 is N mod 10, X2 is N1 mod 10,X2==X1, N2 is N1 div 10,mindown(N2,X,X2).
mindown(N,X,X1):-N==0, X is X1,!;
	X2 is N mod 10,X2<X1, N2 is N div 10,mindown(N2,X,X2);
    X2 is N mod 10,X1<X2, N2 is N div 10,mindown(N2,X,X1);
    X2 is N mod 10,X1==X2, N2 is N div 10,mindown(N2,X,X1).
%11
kol(0,0):-!.
kol(X,K):-X1 is X mod 10, X2 is X div 10, kol(X2,K2), X1<3,  K is K2+1.
kol(X,K):-X1 is X mod 10, X2 is X div 10, kol(X2,K2), X1>3,  K is K2.

%11 вниз

kol_dig(X,X):-X>0,X<3,!.
kol_dig(X,S):-X>0, S1 is X mod 10, X1 is X div 10,kol_dig(X1,0,S1);S is 0.
kol_dig(X,S,S1):-X==0,S1<3,S2 is S+1,write(S2),!;
		  X==0,S1>3,S2 is S,write(S2),!;
		  S1<3,S2 is S+ 1, X1 is X div 10,SS1 is X mod 10, kol_dig(X1,S2,SS1);
		  S1>3,S2 is S, X1 is X div 10,SS1 is X mod 10, kol_dig(X1,S2,SS1);
			  S1=3,S2 is S, X1 is X div 10,SS1 is X mod 10, kol_dig(X1,S2,SS1).


%12
nod(A,A,A):-A=\=0.
nod(0,B,B).
nod(A,0,A).
nod(A,B,X):-A>B,C is A mod B, nod(C,B,X).
nod(A,B,X):-A<B,C is B mod A, nod(A,C,X).

goal:-write("НОД двух чисел:"),read(X1),read(X2),nod(X1,X2,NOD),write("НОД="),write(NOD),nl,
      write("Делители числа:"),read(X3),all_factors(X3),nl,kol_del(X3,Y),write("kol_del="),write(Y),nl,
      write("Число "), prost(Y).

prost(X):-X>2, write("не является простым");
	  X=2,write("является простым");
		  X<2,write("не является простым").

kol_del(X,Y):-kol_del(1,X,Y).
kol_del(I, Value, K):-I > Value, !, K is 0.
kol_del(I, Value, K):-0 is Value mod I, !, % делится на I Без остатка
    NextI is I + 1,kol_del(NextI, Value, K1),
    K is K1 + 1. % в этом случае добавлеяем I к сумме
kol_del(I, Value, K):-
    % сюда попадет только если Value не делится на I
    NextI is I + 1,
    kol_del(NextI, Value, K1),
    K is K1. % при этом I к сумме не добавляется


all_factors(Number):-all_factors(Number, 1).
all_factors(Number, Factor):-Factor > Number, !.
all_factors(Number, Factor):-0 is Number mod Factor,write(Factor),write("  "), fail.
all_factors(Number, Factor):-NextFactor is Factor + 1,all_factors(Number, NextFactor).


%13

goal2:-write("НЕ Делители числа:"),read(X4),all_factors1(X4),nl,
       write("Количество НЕ Делителей числа:"),kol_del(X4,Y),K is X4-Y,write(K),nl,
       write("НЕ взаимно простые НЕ Делители числа:"),nl,all_factors11(X4),nl,
       write("Сумма простых цифр числа:"), sum22(X4,SS),write(SS),nl,
       write("Итог:"),nl,all_factors111(X4),nl.

all_factors1(Number):-all_factors1(Number, 1).
all_factors1(Number, Factor):-Factor > Number, !.
all_factors1(Number, Factor):-0 =\= Number mod Factor,write(Factor),write("  "), fail.
all_factors1(Number, Factor):-NextFactor is Factor + 1,all_factors1(Number, NextFactor).

all_factors11(Number):-all_factors11(Number, 1).
all_factors11(Number, Factor):-Factor > Number, !.
all_factors11(Number, Factor):-0 =\= Number mod Factor,nok(Number,Factor,X),X>1,
						write(Factor),write("  "), fail.
all_factors11(Number, Factor):-NextFactor is Factor + 1,all_factors11(Number, NextFactor).

all_factors111(Number):-all_factors111(Number, 1).
all_factors111(Number, Factor):-Factor > Number, !.
all_factors111(Number, Factor):-0 =\= Number mod Factor,nok(Number,Factor,X),X>1,
						sum22(Number,SS),nok(SS,Factor,XX),XX=1,
						write(Factor),write("  "), fail.
all_factors111(Number, Factor):-NextFactor is Factor + 1,all_factors111(Number, NextFactor).
nok(A, B, GCD):-
    AmB is A mod B,
    BmA is B mod A,
    (
      AmB == 0, !, GCD is B;
      BmA == 0, !, GCD is A;
      A > B, !, nok(AmB, B, GCD);
      nok(A, BmA, GCD)
    ).


%простые числа: 2, 3, 5, 7

sum22(0,0):-!.
sum22(X,S):-X1 is X mod 10,kol_del_(X1,YY),YY=2,X2 is X div 10, sum22(X2,S2), S is X1+S2;
		X1 is X mod 10,kol_del_(X1,YY),YY>2,X2 is X div 10, sum22(X2,S2),S is S2;
		X1 is X mod 10,kol_del_(X1,YY),YY<2,X2 is X div 10, sum22(X2,S2),S is S2.

kol_del_(X,Y):-kol_del_(1,X,Y).
kol_del_(I, Value, K):-I > Value, !, K is 0.
kol_del_(I, Value, K):-0 is Value mod I, !, % делится на I Без остатка
    NextI is I + 1,kol_del_(NextI, Value, K1),
    K is K1 + 1. % в этом случае добавлеяем I к сумме
kol_del_(I, Value, K):-
    % сюда попадет только если Value не делится на I
    NextI is I + 1,
    kol_del_(NextI, Value, K1),
    K is K1. % при этом I к сумме не добавляется








































