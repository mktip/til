# Watch with pipe

Sometimes the watch command acts weird if one tries to run a piped command within it. One might have tried things like:

## What **DOES NOT** WORK

```bash
$ watch ls -la | wc -l
```

The above is wrong because the pipe would be interpeted by the shell between the `watch` and `wc` commands

```bash
$ watch bash -c 'ls -la | wc -l'
```

The above is still wrong. For some reason watch would remove the single quotes (maybe because its counted as a seperate
argument?), so it would actually run `watch 'bash -c ls -la | wc -l'` which would return the wrong results, as it would
ignore -la as it would think they are part of the flags for `bash` and not `ls`. (that might be related to my specific
version of watch)


## What **WORKS**

```bash
$ watch 'ls -la | wc -l'
```

And also by the same logic this also works:

```bash
$ watch "bash -c 'ls -la | wc -l'"
```
