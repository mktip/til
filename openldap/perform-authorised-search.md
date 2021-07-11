# Perform Authorised Search

One can easily search openldap via the `ldapsearch` command as follows:

```bash
$ # command  dn-of-user                     passwd-of-user  dn-of-base-search      search-"term"
$ ldapsearch -D "cn=root,dc=example,dc=com" -w <passwd>     -b "dc=example,dc=com" "(objectclass=*)"
```
