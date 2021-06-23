# Speedup dnf

The package manager in Fedora Linux can sometimes be slow (mainly when updating
repositories and metadata). Beyond that there are some tricks to (or at
least attempt to) speed up the process:

*  Increasing the maximum parralel downloads
*  Enabling fastest mirror check (read somewhere that it might not be as
   effective as one might hope)

```ini
# Increase max parralel downloads from 3 to 10
max_parallel_downloads=10

# Enable fastest mirror check, which works based on latency
fastestmirror=True
```
