%{
int n = 0 ;
%}

%%

"while"|"if"|"else"|"int"|"float"|"return"|"switch"  {n++;printf("\n keyword : %s", yytext);}




[a-zA-Z_][a-zA-Z0-9_]* {printf("\n identifier : %s", yytext);}


"<="|"=="|"="|"++"|"-"|"*"|"+" {printf("\n operator : %s", yytext);}

[,;] {printf("\n separator : %s", yytext);}

[0-9]*"."[0-9]+ {printf("\n float : %s", yytext);}

[0-9]+ {printf("\n integer : %s", yytext);}						

. ;
%%


int main()

{
	
	yylex();
	
	printf("\n total no. of token = %d\n", n);
	
}
int yywrap(){
return 1;
}