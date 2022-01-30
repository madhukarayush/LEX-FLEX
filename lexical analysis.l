%{
int keywords=0;
int identifiers=0;
%}

%%
(int|float|char) {keywords++; printf("%s is keyword",yytext);}
[_a-zA-Z]([a-z|[0-9])* {identifiers++; printf("%s is identifier",yytext);}
%%

int main()
{
yylex();
printf("No of keywords is %d \n no of identifiers is %d",keywords,identifiers);

}