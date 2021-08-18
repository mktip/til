# How LRANGE behaves

When I first worked with redis, it took me some time to realise that `LRANGE` did not behave the way I expected it. I
thought that it simply accepted an index (start), and an offset (length) and returned that range. However, it turned out
that both are indices, and can even be wrapped indices (-1 can be used as the index for the last element).

```redis
# Assume there are only 11 jobs, then both of the below calls are the same
lrange queue:jobs 0 10
lrange queue:jobs 0 -1
```
