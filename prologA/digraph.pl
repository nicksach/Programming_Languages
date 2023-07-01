edge(a,b).
edge(a,f).
edge(b,c).
edge(c,d).
edge(c,e).
edge(e,d).
edge(f,c).
edge(f,e).
edge(f,g).
edge(g,c).

pathLen2(Node1,Node2) :- edge(Node1,SomeNode1), edge(SomeNode1,Node2).

% Add your lab code here

pathLen3(Node1,Node2) :- edge(Node1,SomeNode1),edge(SomeNode2), edge(SomeNode2,Node2).

path(Node1,Node2) :- Node1 = Node2.

path(Node1,Node2) :- edge(Node1,Node2).

path(Node1,Node2) :- edge(Node1,SomeNode), path(SomeNode,Node2).
