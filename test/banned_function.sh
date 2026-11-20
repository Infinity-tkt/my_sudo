# Fonction général:

# grep -R '_printf' . --include="*.c" --exclude-dir="bootstrap" > res1 ; grep -R 'printf' . --include="*.c" --exclude-dir="bootstrap" > res2
# grep -R 'my_strlen' . --include="*.c" --exclude-dir="bootstrap" >> res1 ; grep -R 'strlen' . --include="*.c" --exclude-dir="bootstrap" >> res2
# grep -R 'my_strcat' . --include="*.c" --exclude-dir="bootstrap" >> res1 ; grep -R 'strcat' . --include="*.c" --exclude-dir="bootstrap" >> res2
# grep -R 'my_strcmp' . --include="*.c" --exclude-dir="bootstrap" >> res1 ; grep -R 'strcmp' . --include="*.c" --exclude-dir="bootstrap" >> res2
# grep -R 'my_strncmp' . --include="*.c" --exclude-dir="bootstrap" >> res1 ; grep -R 'strncmp' . --include="*.c" --exclude-dir="bootstrap" >> res2
# grep -R 'my_strcpy' . --include="*.c" --exclude-dir="bootstrap" >> res1 ; grep -R 'strcpy' . --include="*.c" --exclude-dir="bootstrap" >> res2
# grep -R 'my_strncpy' . --include="*.c" --exclude-dir="bootstrap" >> res1 ; grep -R 'strncpy' . --include="*.c" --exclude-dir="bootstrap" >> res2
# grep -R 'my_strdup' . --include="*.c" --exclude-dir="bootstrap" >> res1 ; grep -R 'strdup' . --include="*.c" --exclude-dir="bootstrap" >> res2

# Fonction My_Sudo:

grep -R 'system' . --include="*.c" --exclude-dir="bootstrap" > res
grep -R 'getpw' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'getsp' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'getgr' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'fork' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'clone' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'openat' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'getpass' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'getlogin' . --include="*.c" --exclude-dir="bootstrap" >> res
grep -R 'cuserid' . --include="*.c" --exclude-dir="bootstrap" >> res

# grep -vFf res1 res2 >> res

remove_file() {
    # rm -f res1
    # rm -f res2
    rm -f res
}

if [ -s res ]
then
    echo 'banned function'
    cat res
    remove_file
    exit 1
else
    echo 'no problem'
    remove_file
    exit 0
fi