numberOfLeaves(node(A,B),N) :- numberOfLeaves(A, N1), numberOfLeaves(B,N2), N is N1 + N2.
numberOfLeaves(leaf(A),1).

intree(leaf(A), V) :- A = V.
intree(node(T1,_), V) :- intree(T1,V).
intree(node(_,T2), V) :- intree(T2,V).

position(leaf(A),A,1).
position(node(A,_),L,N) :- intree(A,L), position(A,L,N).
position(node(A,B),L,N) :- intree(B,L), position(B,L,N1), numberOfLeaves(A,N2), N is N1 + N2.
