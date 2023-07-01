% color facts go here
color(yellow).
color(red).
color(green).
color(blue).

coloring([]).
coloring([[X,Y]|L]) :- color(X), color(Y), X \= Y, coloring(L).



% queries so you can cut/paste to test them instead of typing them in
% coloring( [ [Switz, France], [Switz, Italy], [Switz, Germany], [Switz, Austria], [Germany, France], [Germany, Austria], [France, Italy] ]).
% coloring( [ [Penn,Maryland], [Penn, Delaware], [Penn, NewJersey], [Penn, NewYork], [Penn, Ohio], [Penn, WestVirginia], [Ohio, WestVirginia], [WestVirginia, Maryland], [Maryland, Delaware], [Delaware, NewJersey], [NewJersey, NewYork], [Virginia, WestVirginia], [Virginia, Maryland], [Virginia, Kentucky], [Kentucky, Ohio], [Kentucky, Indiana], [Indiana, Ohio] ]).
