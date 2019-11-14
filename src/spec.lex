// Definition Section has one variable 
// which can be accessed inside yylex()  
// and main()
%{ 
int count = 0; 
%} 
  
// Rule Section has three rules, first rule  
// matches with capital letters, second rule 
// matches with any character except newline and  
// third rule does not take input after the enter
%% 
[A-Z] { printf("%s capital letter\n", yytext); count++; }
.     { printf("%s not a capital letter\n", yytext); }
\n    { return 0; }
%% 

// Explanation: 
// yywrap() - wraps the above rule section 
// yyin - takes the file pointer  which contains the input
// yylex() - this is the main flex function which runs the Rule Section
// yytext is the text in the buffer 
int yywrap(){} 
int main(int argc, char *argv[]) {
    FILE *fp; 
    fp = fopen(argv[1],"r"); 
    yyin = fp; 
  
    yylex(); 
    printf("\nNumber of Captial letters in the given input - %d\n", count); 
  
    return 0; 
} 
