% (A small part of) the British Royal family

grandparent(X,Z) :- parent(X,Y), parent(Y,Z).
ancestor(Anc, Desc) :- parent(Anc, Desc).
ancestor(Anc, Desc) :- parent(Parant, Desc), ancestor(Anc, Parent).
parent(queen_elizabeth, prince_charles).
parent(prince_philip, prince_charles).
parent(prince_charles, prince_william).
parent(prince_charles, prince_harry).
parent(princess_diana, prince_william).
parent(princess_diana, prince_harry).