element([Head|Tail], Element) :- Element = Head; element(Tail, Element).


getSymptoms([Symptom|List]):-
    writeln('Enter Symptom:'),
    read(Symptom),
    dif(Symptom,stop),
    getSymptoms(List).

getSymptoms([]).

avg_num(Accumulator, Average) :-
    write('Enter a number (or stop to end): '),
    read(Answer),
    process(Answer, Accumulator, Average).

main :-
    writeln('Number of items? '),
    read(N),
    length(L, N),
    maplist(read, L),
    sort(L, S),
    format('Sorted list: ~w~n', [S]).
