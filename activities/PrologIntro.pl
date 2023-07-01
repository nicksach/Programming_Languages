food(sushi).
food(pizza).
food(burger).
food(wings).
food(chips).

lunch(sushi).
dinner(sushi).

breakfast(pizza).
dinner(pizza).

lunch(burger).
dinner(burger).

lunch(chips).

lunch(wings).
dinner(wings).

favorite(wittie, sushi).
favorite(nick, burger).

meal(The_Person, The_Food) :- favorite(The_Person, The_Food), breakfast(The_Food), write('Take '),write(The_Person),write(' out for a '),write(The_Food),write(' breakfast.').
meal(The_Person, The_Food) :- favorite(The_Person, The_Food), lunch(The_Food), write('Take '),write(The_Person),write(' out for a '),write(The_Food),write(' lunch.').
meal(The_Person, The_Food) :- favorite(The_Person, The_Food), dinner(The_Food), write('Take '),write(The_Person),write(' out for a '),write(The_Food),write(' dinner.').

