#/bin/bash

#### the below lines will take input from user in the variable USER_NAME
read -p 'Enter the username to create: ' USER_NAME

read -p 'Enter the name of the person who this account is for: ' COMMENT

read -p 'Enter password to use for this account: ' PASSWORD

#### useradd command creates the account, -m specifies that home directory be created for this user
useradd -c "#{COMMENT}" -m "${USER_NAME}"

#### | pipes the output from the previous command (echo, in this case) to the stdin for the next command (passwd)
#### so that for passwd, stdin is the result of the previously executed command
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

#### -e expires the user password
passwd -e ${USER_NAME}
