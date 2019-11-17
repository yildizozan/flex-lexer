# flex-lexer
Simple Lexer Flex Example

Need to install Flex
```shell
sudo apt-get update
sudo apt-get install flex
```

Write rules a file
```shell
flex rules.lex
```

Flex compiler generate lex.yy.c file,
Now, we can compile with gcc or cc
```shell
cc -o lexer lex.yy.c -ll
```
Now, we can check syntax with your rules!
```shell
./lexer source.g++
```

Done!
