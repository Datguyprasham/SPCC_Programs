###### 12. LEX Program to check whether the string is a word or a number. ######

%{
	//Definitions
%}

%%
[a-zA-Z]+ {
	printf("\n Entered character is a alphabet");
	ECHO;
}
[0-9]+ {
	printf("\n Entered character is a number");
	ECHO;
}
%%

int yywrap(){
	return(1);
}
void main(){
	printf("Enter a character: ");
	yylex();
}