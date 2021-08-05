# Create Unix Socket

Sometimes in order to debug some issues, one needs to create a unix socket. Thankfully, this can be done easily with
netcat as follows:

```bash
$ nc -Ul <filename> # to start the server
```

```bash
$ nc -U <filename> # to connect to the server
```
