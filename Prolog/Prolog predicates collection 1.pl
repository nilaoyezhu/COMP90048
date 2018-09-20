member1(Elt, List) :- append(_,[Elt|_], List).

member2(Elt, [Elt|_]).
member2(Elt, [_|Rest]) :- member2(Elt, Rest).

square(N, N2) :- N2 is N * N.
square(N, N1) :- N1 is sqrt(N).

rev1([], []).
rev1([A|BC], CBA) :-
        rev1(BC, CB),
        append(CB, [A], CBA).
        	
rev2([], []).
rev2([A|BC], CBA) :-
        append(CB, [A], CBA),
        rev2(BC, CB).
        	
rev3(ABC, CBA) :-
        samelength(ABC, CBA),
        rev1(ABC, CBA).
        	
samelength([], []).
samelength([_|Xs], [_|Ys]) :-
        samelength(Xs, Ys).