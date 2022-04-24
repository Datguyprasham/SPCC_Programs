######  13. LEX Program to count the number of lines, words and characters in a text  ######

%{
	int nwords,nlines,nchars;
%}

%%
\n {
	nchars++;nlines++;
	}
[^ \n\t]+ {nwords++; nchars=nchars+ yyleng;}
. {nchars++;}
%%

int yywrap(void){
	return 1;
}

int main(int argc,char* argv[]){
	yyin=fopen(argv[1],"r");
	yylex();
	printf("Lines = %d \n Chars = %d \n Words = %d", nlines,nchars,nwords);
	return 0;
}
