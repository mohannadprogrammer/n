domains 
A=string

predicates 
	nondeterm node (A,A,A,A,A).
	nondeterm question (A).
	nondeterm moveTo (A,A).
	nondeterm switch (A,A,A).
	
clauses 
	node (a,b,c,d,n).
	node (b,n,m,n,a).
	node (c,r,n,s,a).
	node (d,y,w,t,a).
	node (m,l,n,f,b).
	node (r,n,b2,n,c).
	node (s,n,n,z,c).
	node (y,n,n,n,d).
	node (w,n,n,n,d).
	node (t,n,n,n,d).

	%win node . 
	node (g,n,n,n,z).

	node (z,g,n,e,s).
	node (e,n,n,n,z).
	node (l,n,n,n,m).
	node (f,n,n,n,m).
	node (b2,n,n,n,r).
	
	question (a):-
		write("\n make disession : - \n r- Righ. \n f-foreword . \n l-left .").
		
	question (b):-
		write("\n make disession : - \n  \n f-foreword . \n b-backword .").
	
	question (c):-
		write("\n make disession : - \n r- Righ. \n l-left . \n b-backword").
		
	question (d):-
		write("\n make disession : - \n r- Righ. \n f-foreword . \n l-left .").
	
	question (m):-
		write("\n make disession : - \n r- Righ. \n l-left .\n b-backword .").
		
	question (l):-
		write("\n make disession : - \n b-backword .").
		
	
	question (f):-
		write("\n make disession : - \n b-backword .").
		
	question (r):-
		write("\n make disession : - \n  f-foreword . \n b-backword .").
	
	question (s):-
		write("\n make disession : - \n l-left. \n b-backword .").
		
	question (y):-
		write("\n make disession : - \n b-backword .").
	question (t):-
		write("\n make disession : - \n b-backword .").
		
	question (e):-
		write("\n make disession : - \n b-backword .").
	
	question (z):-
		write("\n make disession : - \nr-Right . \nl-left . \n b-backword .").
	
	
	question (s):-
		write("\n make disession : - \n f-foreword . \n b-backword .").
	
	question (b2):-
		write("\n make disession : - \n b-backword .").
	
	question (w):-
		write("\n make disession : -\nf-foreword . \n b-backword .").
	moveTo (NewNode,Father):-
		question (NewNode),
		readln(Choose),
		switch(NewNode,Father,Choose).
	moveTo (g,z):-
	write("you win \n ").
	
	switch(Current,Father,r):-
		
		node(Current,Choose,_,_,Father),
		moveTo(Choose,Current),   !.
	switch(Current,Father,f):-
		node(Current,_,Choose,_,Father),
		moveTo(Choose,Current),!.
		
	switch(Current,Father,l):-
		node(Current,_,_,Choose,Father),
		moveTo(Choose,Current),!.
		
	switch(_,Father,w):- 
		moveTo(Father,_),!.
	
	switch(Current,Father,_):- 
		write("that option nat avalible .\n "), 
		moveTo(Father,Current).
goal moveTo(a,n).
