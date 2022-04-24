######  11. LEX Program to check whether input character is vowel or consonants.  #######

%{
	/*To display if character is a vowel or not */
	void display(int, char *);
	int flag;
%}

%%
[a|e|i|o|u|A|E|I|O|U] {
	flag=1;display(flag,yytext);
}
. {
	flag=0;display(flag,yytext);
}
%%

void main(){
	printf("\n Enter the input character: ")
	yylex();
}
void display(int flag, char* t){
	if(flag==1)
		printf("\n The input character [%s] is a vowel",t);
	else
		printf("\n The input character [%s] is not a vowel",t);
}
