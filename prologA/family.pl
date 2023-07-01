male('Joel').
male('Jim').
male('Mike').
male('Nick').
female('Dorothy').
female('Rachel').
female('Lucinda').
female('Emma').


parent('Joel', 'Rachel').
parent('Dorothy', 'Rachel').

parent('Jim', 'Nick').
parent('Rachel', 'Nick').

parent('Joel', 'Mike').
parent('Joel', 'Lucinda').
parent('Joel', 'Rachel').

parent('Lucinda', 'Emma').


father(TheDad, TheChild) :- male(TheDad), parent(TheDad, TheChild).
mother(TheMom, TheChild) :- female(TheMom), parent(TheMom, TheChild).
son(TheMaleChild, TheParent) :- male(TheMaleChild), parent(TheMom, TheMaleChild).
daughter(TheFemaleChild, TheParent) :- female(TheFemaleChild), parent(TheParent, TheFemaleChild).
child(TheChild, TheParent) :- parent(TheParent, TheChild).
grandparent(TheGrandparent, TheGrandchild) :- parent(TheParent,TheGrandchild), parent(TheGrandparent,TheParent).
sibling(ThePerson, TheirSibling) :- parent(TheParent,ThePerson), parent(TheParent,TheirSibling), ThePerson\=TheirSibling.
aunt(TheAunt, TheChild) :- parent(TheParent,TheChild), female(TheAunt), sibling(TheAunt,TheParent).
uncle(TheUncle, TheChild) :- parent(TheParent,TheChild), male(TheUncle), sibling(TheUncle,TheParent).
cousin(ThePerson, TheirCousin) :- parent(TheParent, ThePerson), sibling(TheParent,OtherParent), parent(OtherParent,TheirCousin).
ancestor(TheAncestor, TheDescendant) :- parent(TheAncestor,TheDescendant).
ancestor(TheAncestor, TheDescendant) :- parent(TheParent,TheDescendant), ancestor(TheAncestor,TheParent).