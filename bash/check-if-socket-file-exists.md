# Check if socket file exists

In bash, one can check if a socket file exists with `-S` as follows:

```bash
$ [ -S <filename> ] && nc -U <filename>
```

source: [For more bash checks](https://tldp.org/LDP/abs/html/fto.html)
