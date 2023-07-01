mem(_, []) :- false.
mem(X, [X|_]).
mem(X, [_|T]) :- mem(X, T).