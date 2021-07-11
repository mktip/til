# Create a Copr Project

Using the `copr-cli` tool, one can easily create a project and even specify the default arches to build against as
follows:

```
$ copr-cli create --chroot fedora-33-x86_64 --chroot fedora-34-x86_64 --chroot fedora-rawhide-x86_64 \
                  --description "Insert very cool project description here" \
                  --instructions "`sudo dnf copr enable <username>/<project>`"
```
