# Memoize functions with the cache directive

In python one can memoize a function with a single directive.


```python
from functools import cache

# A Fibonacci function with memoization
@cache
def fibo(n):
    if n <= 2:
        return 1

    return fibo(n-1) + fibo(n-2)
```

One thing to keep in mind is that the parameters of the targeted function must
be hashable (for example one cannot use lists as inputs, but can use tuples).
