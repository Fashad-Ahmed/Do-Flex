%{
	/*To find whether given letter is a vowel or not*/
#undef yywrap
#define yywrap() 1
	void display(int);
	int n = 0;
%}

%%

[a|e|i|o|u|] {
		int flag=1;
		display(flag);
		return;
		}

.+ {
	int flag=0;
	display(flag);
	return;
	}
	
%%

void display(int flag)
{
	if(flag==1)
		printf("The given letter [%s] is a vowel",yytext, n++);
		
	else
		printf("The given letter [%s] is NOT a vowel",yytext, n++);		
		
}

main()
{
	printf("Enter a letter to check if it is a vowel or not");
	yylex(); 
	printf("\n total no. of token = %d\n", n);
	return 1;
}