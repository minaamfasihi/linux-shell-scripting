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

#### by convention, variables are all uppercase. it's a convention, not a rule!
```echo "This is a shell $WORD"```  
```echo "This is a shell ${WORD}"```

#### for append operations, you need curly braces otherwise bash will get confused
```echo "${WORD}ing is fun!" # scripting is fun```  
```echo "$WORDing is fun!" # is fun```

```ENDING='ed'```  
```echo "This is ${WORD}${ENDING}"```

#### Display the UID
```echo "Your UID is ${UID}"```

#### Display the name of user
```id -u -n```  
or  
```id -un```

#### Store the username in a variable
```USER_NAME=$(id -un)```  
```echo "Your username is ${USER_NAME}"```  

#### is equivalent to (older style)
```USER_NAME=`id -un```  
```echo "Your username is ${USER_NAME}"```  

#### Display if the user is root or not
#### Root always has id 0
#### [[ ]] can be replace by single []. Double square brackets is the new way. Also this is bash-specific
#### May not work on other shells like zsh etc.
```if [[ "${UID}" -eq 0 ]]```  
```then```  
  ```echo 'You are root'```  
```else```  
  ```echo 'You are not root'```  
```fi```  

