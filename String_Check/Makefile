main: 
	bison -d prog.y
	flex prog.l
	gcc prog.tab.c lex.yy.c
	./a.out