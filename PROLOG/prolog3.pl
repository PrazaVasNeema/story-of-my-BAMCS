max(X,Y,Z):-X>Y->Z=X;Z=Y.
max(X,Y,Z,W):-max(X,Y,P),max(P,Z,W).
fact_up(1,1):-!.
fact_up(N,X):-N1 is N-1, fact_up(N1,X1), X is X1*N.

fact_down(1,1):-!.
fact_down(N,X,N,X):-!.
fact_down(N,X):-fact_down(N,X,1,1).
fact_down(N,X,N1,X1):-N11 is N1+1,X11 is X1*N11, fact_down(N,X,N11,X11).

fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N1 is N-1,N2 is N1-1, fib(N1,X1), fib(N2,X2), X is X1+X2.

fib_down(1,1):-!.
fib_down(2,1):-!.
fib_down(N,X,N,X,X):-!.
fib_down(N,X):-fib_down(N,X,2,1,1).
fib_down(N,X,N1,X1,X2):-N1 is N->X is X1; N11 is N1+1, X22 is X1, X11 is X1 + X2,fib_down(N,X,N11,X11,X22).

%sum(0,1):-!.
% sum(Num,X):-Num mod 10==0 -> sum(1,1);Num1 is Num,10), sum(Num1,X1), X
% is X1 + Num1.

sum(Num,X):-Num<10->X is Num,!.
sum(Num,X):-Num>=10->N
sum(Num,X):-Num>=10->Num1 is Num div 10, sum(Num1,X1), X is X1+Num mod 10.

























