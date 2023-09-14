% ������� ����

%edge(a,b).
%edge(b,e).
%edge(a,c).
%edge(c,d).
%edge(e,d).

edge(a,b).
edge(b,a).
edge(c,a).
edge(a,c).
edge(c,d).

help(X,[X|T],T).
help(X,[H|T],[H|NewT]):-help(X,T,NewT).

add([],E,[E]).
add([H|T],E,[H|T1]):-add(T,E,T1).

set(R):-
    L=[a,b,c,d,e],
    set(L,L,[],R).
set([],_,R,R).
set([_|T1],[],RT,R):-set(T1,T1,RT,R).
set([H1|T1],[H2|T2],RT,R):-
    edge(H1,H2)->(add(RT,[H1,H2],RTT),set([H1|T1],T2,RTT,R));set([H1|T1],T2,RT,R).

edges_path([], [_]).
edges_path(Edges, [X,Y|Xs]):-
           help([A,B],Edges,EdgesT),
           (A = X, B = Y; B = X, A = Y),
           edges_path(EdgesT, [Y|Xs]).

eulerpath(Cs):-
    set(Edges),
    edges_path(Edges,Cs),!.




% ����������� ����

get_help(X,[X|T],T).
get_help(X,[H|T],[H|NewT]):-help(X,T,NewT).

get_vertices(_,[],0):-!.
get_vertices(L,[XN|TN],N):-help(XN,L,LN1),NN is N-1,get_vertices(LN1,TN,NN).
get_vertices(L,LN):-length(L,N),get_vertices(L,LN,N).

check_way([H1|[H2|T]]):-edge(H1,H2)->check_way([H2|T]).
check_way([_|[]]).

%����� ����������� ����
gam_way :-
L=[a,b,c,d],
get_vertices(L,LN),
check_way(LN),
writeln(LN).
