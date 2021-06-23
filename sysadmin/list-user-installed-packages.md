# List User Installed Packages

It is quite helpful to list the packages I installed manually on my machine,
especially before perfomring a fresh install, so that I know what to install when
the fresh system is up and running. A simple way to do so is to run:

```bash
$ dnf history userinstalled > packages.txt
```
