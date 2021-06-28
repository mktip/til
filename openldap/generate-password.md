# Generate password

There is already a utility to generate hashed passwords for openldap via the
`slappasswd` utility as such:

```bash session
$ slappasswd -s "don't pass me as a parameter"
{SSHA}AI6HTvey81j5EWin4QkPYQy8NvlUFYRp
```
