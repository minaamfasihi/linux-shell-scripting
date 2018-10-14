#### find the type of command (either built-in or not)
```type echo```

#### find all possible types of command
```type -a echo```

#### find help about a built-in command (doesn't work for commands that are not built-in)
```help echo```

#### find help about non-built-in commands
```man uptime```

#### Printing out variables must be done with double quotes to allow variable expansion
```WORD='script'```
```echo "$WORD" # prints 'script'```
