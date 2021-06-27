# Convert Virtualbox box to livirt box

When using vagrant, sometimes the box one needs to use does not support the
providers avaialbel on the system. In order to solve this issue, a vagrant plugin
called [vagrant-mutate](https://github.com/sciurus/vagrant-mutate) was created
which allows one to convert boxes made for a specific provider to another
provider.

```bash
$ vagrant plugin install vagrant-mutate
```

It is simple to use, just specify the box you which to convert, and the target
provider that you use:

```bash
$ vagrant mutate nixos/nixos-18.03-x86_64 libvirt
```

Sometimes one might face issues when running the converted box. For instance in
the above example, the converted nixos box suffers some issues with NFS.
Therefore a quick hack is to override such defaults by [changing the nfs to
rsnyc or even disable it](../vagrant/sync-folder-to-vagrant-box.md)
