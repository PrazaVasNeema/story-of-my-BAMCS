sub_posl([],_):-!.
sub_posl(_,[]):-fail,!.
sub_posl([H|Sub_list],[H|List]):-sub_posl(Sub_list,List),!.
sub_posl(Sub_list,[_|List]):-sub_posl(Sub_list,List).

sub_set([],[]).
sub_set([H|Sub_set],[H|Set]):-sub_set(Sub_set,Set).
sub_set(Sub_set,[_|Set]):-sub_set(Sub_set,Set).

in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).


sprava_next(A,B,[C]):-fail.
sprava_next(A,B,[A|[B|Tail]]).
sprava_next(A,B,[_|List]):-sprava_next(A,B,List).

sleva_next(A,B,[C]):-fail.
sleva_next(A,B,[B|[A|Tail]]).
sleva_next(A,B,[_|List]):-sleva_next(A,B,List).

next_to(A,B,List):-sprava_next(A,B,List).
next_to(A,B,List):-sleva_next(A,B,List).

el_no(List,Num,El):-el_no(List,Num,1,El).
el_no([H|_],Num,Num,H):-!.
el_no([_|Tail],Num,Ind,El):-Ind1 is Ind+1,el_no(Tail,Num,Ind1,El).

pr_ein:- Houses=[_,_,_,_,_],

		in_list(Houses,[red,english,_,_,_]),
		in_list(Houses,[_,spanish,_,dog,_]),
		in_list(Houses,[green,_,coffee,_,_]),
		in_list(Houses,[_,ukrain,tea,_,_]),
		sleva_next([green,_,_,_,_],[white,_,_,_,_],Houses),
		in_list(Houses,[_,_,_,ulitka,old_gold]),
		in_list(Houses,[yellow,_,_,_,kool]),
		el_no(Houses,3,[_,_,milk,_,_]),
		el_no(Houses,1,[_,norway,_,_,_]),
		next_to([_,_,_,_,chester],[_,_,_,fox,_],Houses),
		next_to([_,_,_,_,kool],[_,_,_,horse,_],Houses),
		in_list(Houses,[_,_,orange,_,lucky]),
		in_list(Houses,[_,japan,_,_,parlament]),
		next_to([_,norway,_,_,_],[blue,_,_,_,_],Houses),


		in_list(Houses,[_,WHO1,water,_,_]),
		in_list(Houses,[_,WHO2,_,zebra,_]),
		write(Houses),
		write(WHO1),nl,write(WHO2).


list([El|_],El).
list([_|T],El):-list(T,El).


zad2:- Guys=[_,_,_],

    list(Guys,[belokurov,_]),
    list(Guys,[rizhov,_]),
    list(Guys,[chernov,_]),
    list(Guys,[_,brovvn]),
    list(Guys,[_,vvhite]),
    list(Guys,[_,rizhiy]),
    not(list(Guys,[belokurov,brovvn])),
    not(list(Guys,[belokurov,vvhite])),
    not(list(Guys,[rizhov,rizhiy])),
    not(list(Guys,[chernov,brovvn])),
    write(Guys),!.

dresseqsho([[Name|[Eq|[Eq]]],_],Name):-!.
dresseqsho([[_|_]|Tout],Name):-dresseqsho(Tout,Name).

zad3:-Girls=[_,_,_],
       list(Girls,[anya,_,_]),
       list(Girls,[valya,_,_]),
       list(Girls,[natasha,_,_]),
       list(Girls,[_,vvhite,_]),
       list(Girls,[_,green,_]),
       list(Girls,[_,blue,_]),
       list(Girls,[_,_,vvhite]),
       list(Girls,[_,_,green]),
       list(Girls,[_,_,blue]),
       list(Girls,[natasha,_,green]),
       not(list(Girls,[valya,vvhite,vvhite])),
       dresseqsho(Girls,anya),
       %list(Girls,[Valya,P1,T1]),
       %list(Girls,[Natasha,P2,T2]),
       %list(Girls,[Anya,P3,T3]),
       %write(P3),write(T3),nl,write(P1),write(T1),nl,write(P2),write(T2).
       write(Girls),!.

%sister("borisov").
%older("semenov").
%smaller("slesar").
%nosiblings("slesar").
zad4:-Friends=[_,_,_],
    list(Friends,[borisov,_,1,_]),
    list(Friends,[ivanov,_,_,_]),
    list(Friends,[semenov,_,_,2]),
    list(Friends,[_,slesar,0,0]),
    list(Friends,[_,tokar,_,1]),
    list(Friends,[_,svarshik,_,_]),
    write(Friends),!.

betvveen1(A,B,C,List):-next_to(A,C,List),next_to(B,C,List).
% betvveen([H,T],[H1,T1],C,List):-next_to([H,T],C,List),next_to([H1,T1],C,List),[H,T]=\=[H1,T1].
%

zad5:-Glass=[_,_,_,_],
    list(Glass,[bottle,_]),
    list(Glass,[cup,_]),
    list(Glass,[kuvshin,_]),
    list(Glass,[banka,_]),
    list(Glass,[_,vvater]),
    list(Glass,[_,milk]),
    list(Glass,[_,kvas]),
    list(Glass,[_,limonad]),
    not(list(Glass,[bottle,milk])),
    not(list(Glass,[bottle,vvater])),
    not(list(Glass,[banka,vvater])),
    not(list(Glass,[banka,limonad])),
    next_to([_,kvas],[_,limonad],Glass),
    next_to([kuvshin,_],[_,limonad],Glass),
    not(list(Glass,[kuvshin,kvas])),
   % next_to([cup,_],[banka,_],Glass),
   % next_to([cup,_],[_,milk],Glass),
    betvveen1([banka,_],[_,milk],[cup,_],Glass),
    write(Glass),!.

zad5_1:-Glass=[_,_,_,_],
    list(Glass,[bottle,_]),
    list(Glass,[cup,_]),
    list(Glass,[kuvshin,_]),
    list(Glass,[banka,_]),
    list(Glass,[_,vvater]),
    list(Glass,[_,milk]),
    list(Glass,[_,kvas]),
    list(Glass,[_,limonad]),
    not(list(Glass,[bottle,milk])),
    not(list(Glass,[bottle,vvater])),
    not(list(Glass,[banka,vvater])),
    not(list(Glass,[banka,limonad])),
    not(list(Glass,[kuvshin,kvas])),
    not(list(Glass,[banka,milk])),
    next_to([_,limonad],[_,kvas],Glass),
    next_to([cup,_],[banka,_],Glass),
    write(Glass),!.


know(Talent,[A1,B1,C11,C12,C13,C14],[A2,B2,C21,C22,C23,C24]):-
list(Talent,[A1,B1,C11,C12,C13,C14]),
list(Talent,[A2,B2,C21,C22,C23,C24]),

(C11=[A2,B2];C12=[A2,B2];C13=[A2,B2];C14=[A2,B2]).
doesntknow(Talent,[A1,B1,C11,C12,C13,C14],[A2,B2,C21,C22,C23,C24]):-
list(Talent,[A1,B1,C11,C12,C13,C14]),
list(Talent,[A2,B2,C21,C22,C23,C24]),
not(C11=[A2,B2]),not(C12=[A2,B2]),not(C13=[A2,B2]),not(C14=[A2,B2]).
whoknow(Talent,[A,B,C1,C2,C3,C4]):-
list(Talent,[A,B,C1,C2,C3,C4]),
((C4=[]);(C3=[],C4=[]);(C2=[],C3=[],C4=[]);(C1=[],C2=[],C3=[],C4=[])).

zad6:-Talent=[_,_,_,_],
list(Talent,[voronov,_,_,_,_,_]),
list(Talent,[pavlov,_,_,_,_,_]),
list(Talent,[levitskiy,_,_,_,_,_]),
list(Talent,[saharov,_,_,_,_,_]),
list(Talent,[_,dancer,_,_,_,_]),
list(Talent,[_,artist,_,_,_,_]),
list(Talent,[_,singer,_,_,_,_]),
list(Talent,[_,writer,_,_,_,_]),

whoknow(Talent,[voronov,_,_,_,_,_]),
whoknow(Talent,[pavlov,_,_,_,_,_]),
whoknow(Talent,[levitskiy,_,_,_,_,_]),
whoknow(Talent,[saharov,_,_,_,_,_]),

not(list(Talent,[voronov,singer,_,_,_,_])),
not(list(Talent,[levitskiy,singer,_,_,_,_])),
know(Talent,[voronov,_,_,_,_,_],[_,singer,_,_,_,_]),
know(Talent,[levitskiy,_,_,_,_,_],[_,singer,_,_,_,_]),

not(list(Talent,[pavlov,artist,_,_,_,_])),
not(list(Talent,[pavlov,writer,_,_,_,_])),
know(Talent,[pavlov,_,_,_,_,_],[_,artist,_,_,_,_]),
know(Talent,[_,writer,_,_,_,_],[_,artist,_,_,_,_]),

not(list(Talent,[saharov,writer,_,_,_,_])),
not(list(Talent,[voronov,writer,_,_,_,_])),
know(Talent,[_,writer,_,_,_,_],[saharov,_,_,_,_,_]),
know(Talent,[_,writer,_,_,_,_],[voronov,_,_,_,_,_]),

doesntknow(Talent,[voronov,_,_,_,_,_],[levitskiy,_,_,_,_,_]),
write(Talent),!.

zad7:-VVin=[_,_,_],
    list(VVin,[richard,_,_]),
    list(VVin,[maikl,_,_]),
    list(VVin,[saimon,_,_]),
    list(VVin,[_,basketball,_]),
    list(VVin,[_,cricket,_]),
    list(VVin,[_,tennis,_]),
    list(VVin,[_,_,american]),
    list(VVin,[_,_,australian]),
    list(VVin,[_,_,izrailtanin]),
    list(VVin,[maikl,basketball,_]),
    not(list(VVin,[_,basketball,american])),
    not(list(VVin,[maikl,_,american])),
    list(VVin,[saimon,_,izrailtanin]),
    not(list(VVin,[saimon,tennis,_])),
    write(VVin),!.



find_var6_1:-Pr=[_,_,_],
list(Pr,[morozov,[_,_],_]),
list(Pr,[vasiliev,[_,_],_]),
list(Pr,[tokarev,[_,_],_]),
(list(Pr, [_,[history,_],_]);
list(Pr, [_, [_,history],_])),

(list(Pr, [_,[math,_],_]);
list(Pr, [_, [_,math],_])),

(list(Pr, [_,[biology,_],_]);
list(Pr, [_, [_,biology],_])),

(list(Pr, [_,[geography,_],_]);
list(Pr, [_, [_,geography],_])),

(list(Pr, [_,[english,_],_]);
list(Pr, [_, [_,english],_])),

(list(Pr, [_,[franc,_],_]);
list(Pr, [_, [_,franc],_])),

list(Pr,[_,[_,_],0]),
list(Pr,[_,[_,_],1]),
list(Pr,[_,[_,_],2]),

(not(list(Pr, [_, [geography,franc],_])),
not(list(Pr, [_, [franc,geography],_]))),

list(Pr, [morozov,_,0]),

(list(Pr, [_, [biology,_],Age1]);list(Pr, [_, [_,biology],Age1])),
(list(Pr, [_, [math,_], Age2]);list(Pr, [_, [_,math], Age2])),
%(Age1 = Age2+1; Age1 = Age2+2),
Age1>Age2,

(not(list(Pr, [tokarev,[biology,_],_])),not(list(Pr, [tokarev,[_,biology],_]))),
(not(list(Pr, [tokarev,[franc,_],_])),not(list(Pr, [tokarev,[_,franc],_]))),
(not(list(Pr, [_,[franc,biology],_])),not(list(Pr, [_,[biology,franc],_]))),

(not(list(Pr, [morozov,[math,_],_])),not(list(Pr, [morozov,[_,math],_]))),
(not(list(Pr, [morozov,[english,_],_])),not(list(Pr, [morozov,[_,english],_]))),
(not(list(Pr, [_,[math,english],_])),not(list(Pr, [_,[english,math],_]))),
write(Pr),!.


