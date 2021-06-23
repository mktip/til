# List User Installed Packages

It is quite helpful to list the packages I installed manually on my machine,
especially before perfomring a fresh install, so that I know what to install when
the fresh system is up and running. A simple way to do so is to run:

```bash
$ dnf history userinstalled > packages.txt
```

A more interesting approach is found
[here](https://unix.stackexchange.com/questions/445003/listing-packages-explicitly-installed-by-the-user-using-dnf),
in which a combination of the `leaves` dnf plugin (which lists packages not
required by other installed packages), and the `comm` (compare command) is used
in the following manner:

```bash
$ #    -12: Suppress the lines uniq to the first and second "files"
$ #              (only leaves 3, which are the lines found in both)
$
$ comm -12 <(dnf leaves | sort) <(sudo dnf history userinstalled | sort)
```
