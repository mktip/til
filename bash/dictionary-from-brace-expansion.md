# Dictionary from brace expansion

I've been playing around with brace expansion in Bash lately and I noticed an interesting thing. The below seems to
expand to `a{a..z} b{a..z} c{a..z} d{a..z}` ... etc. Then it will expand to aa ab ac ad ae ... ba bb bc be ... etc,
generating a list of all 2 letter compinations. It was funny to see that brace expansion is multiplicative.

```bash
$ echo {a..z}{a..z}
aa ab ac ad ae af ag ah ai ...
```
