# Grep something from history

It is often the case that one wants to make sure that he removed some key, or if they ever commited a secret to their
repo. This and other analytical tasks can be done via the script below which flats out every single object in git's
history so that one can grep from it.

```bash
#!/usr/bin/env bash

(
  find .git/objects/pack/ -name "*.idx" |
    while read i; do
      git show-index < "$i" | awk '{print $2}';
    done;

  find .git/objects/ -type f |
    grep -v '/pack/' |
    awk -F'/' '{print $(NF-1)$NF}';

) | grep -v infopacks |
  while read o; do
    git cat-file -p $o;
  done | grep -a <pattern>
```

* source: @tomnomnom
