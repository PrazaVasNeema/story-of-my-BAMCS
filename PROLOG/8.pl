is_contains([],_):-false.
is_contains([H|T],X):-H=X -> true; is_contains(T,X).
add([],E,[E]).
add([H|T],E,[H|T1]):-add(T,E,T1).
set([],[H|T],[H|T]).
set([H|T],[HT|TT],TR):-(is_contains([HT|TT],H)) -> (set(T,[HT|TT],TR)); (add([HT|TT],H,[HTT|TTT]),set(T,[HTT|TTT],TR)).
set([H|T],TR):-set([H|T],[H],TR).
cn_list(_,[],[HT|TT],[HT|TT]):-!.
cn_list([H|T],[HS|TS],[HT|TT],TR):-contain_num([H|T],HS,N), add([HT|TT],N,[HTT|TTT]), cn_list([H|T],TS,[HTT|TTT],TR).
cn_list([H|T],TR):-set([H|T],[HS|TS]), contain_num([H|T],HS,N), cn_list([H|T],TS,[N],TR).
eq1([]):-!.
eq1(1):-!.
eq1([1|T]):-eq1(T).
just1(L):-cn_list(L,NL),eq1(NL),!.
%��������, ������� ������� ��� ��������, ������
%�������.
deleq([],_,[[]|[]]):-!.
deleq([H|T],E,[HN|TN]):-H=E->deleq(T,E,[HN|TN]);(HN=H,deleq(T,E,TN)).
dellast([_],[]):-!.
dellast([X|T],[X|Y]):-dellast(T,Y).
deleqn(L,E,LN):-deleq(L,E,LT),dellast(LT,LN).
%deleq([E|T],E,LN):-deleq(T,E,LN).
%deleq([H|T],E,[H|TN]):-deleq(T,E,[H|TN]).

help(X,[X|T],T).
help(X,[H|T],[H|NewT]):-help(X,T,NewT).

contain_num([],_,NT,N):-N is NT.
contain_num([H|T],X,NT,N):-X=H -> contain_num(T,X,NT+1,N); contain_num(T,X,NT,N).
contain_num([H|T],X,N):-contain_num([H|T],X,0,N).

z1_1(K,L,A):-zadan1_1(K,L,A).
zadan1_1(0,_,[]).
zadan1_1(K,L,[H|T]):-K>0, K1 is K-1, help(H,L,_), zadan1_1(K1,L,T).

%������� 2. ���� ��������� {a,b,c,d,e,f}. ��������� ��� ����� ����� 5, �
%������� ����� ��� ����� a. ����� � ����.
nomer2(A) :-
L = [a,b,c,d],
z1_1(5,L,A),
contain_num(A,a,2).

%������� 3. ���� ��������� {a,b,c,d,e,f}. ��������� ��� ����� ����� 5, �
%������� ����� 2 ����� a, ��������� ����� �� �����������. ����� � ����.

nomer3(A):-
ex2(A),
deleqn(A,a,AT),
just1(AT).

%������� 4. ���� ��������� {a,b,c,d,e,f}. ��������� ��� ����� ����� 5, �
%������� ����� ���� ����� ����������� 2 ����, ��������� ����� ��
%�����������. ����� � ����.

nomer4(A):-
L = [a,b,c,d],
z1_1(5,L,A),
help(X,A,AT),
contain_num(A,X,2),
deleqn(AT,X,ATT),
just1(ATT).

%������� 5. ���� ��������� {a,b,c,d,e,f}. ��������� ��� ����� ����� 6, �
%������� ����� 2 ����� ����������� 2 ����, ��������� ����� ��
%�����������. ����� � ����.
nomer5(A):-
L = [a,b,c,d],
z1_1(6,L,A),
help(X1,A,AT1),
help(X2,AT1,AT2),
not(X1=X2),
contain_num(A,X1,2),
contain_num(A,X2,2),
deleqn(AT2,X1,AT3),
deleqn(AT3,X2,AT4),
just1(AT4).

%������� 6. ���� ��������� {a,b,c,d,e,f}. ��������� ��� ����� ����� 7, �
%������� ����� 1 ����� ����������� 2 ����, ����� ���� ����� �����������
%3 ���� ��������� ����� �� �����������. ����� � ����.
nom6(A):-
L = [a,b,c,d],
z1_1(7,L,A),
help(X1,A,AT1),
help(X2,AT1,AT2),
contain_num(A,X1,2),
contain_num(A,X2,3),
deleqn(AT2,X1,AT3),
deleqn(AT3,X2,AT4),
just1(AT4).

%������� 7. ���� ��������� {a,b,c,d,e,f}. ��������� ��� ����� ����� 9, �
%������� ����� 2 ����� ����������� 2 ����, ����� ���� ����� �����������
%��� ����, ��������� ����� �� �����������. ����� � ����.
nom7(A):-
L = [a,b,c,d,e,f],
z1_1(7,L,A),
help(X1,A,AT1),
help(X2,AT1,AT2),
help(X3,AT2,AT3),
contain_num(A,X1,2),
contain_num(A,X2,2),
contain_num(A,X3,3),
deleqn(AT3,X1,AT4),
deleqn(AT4,X2,AT5),
deleqn(AT5,X3,AT6),
just1(AT6).
