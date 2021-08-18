# Refresh bin paths

Ever ran a command and was suprised to see its using an old path which you updated to something else? Well, it seems
like bash caches the paths to commands after you execute them. Meaning that even if the `PATH` variable changes, the
cache of paths to commands which were ran before is still the same. To drop the cache one can run the following:

```bash
$ hash -r
```
