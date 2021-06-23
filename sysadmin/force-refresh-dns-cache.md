# Force Refresh DNS Cache

In Fedora (and other Linux based distros using the same DNS cache service), most
likely systemd-resolved is the DNS cache. Sometimes, one would like to reset the
cache so that fresh DNS queries are made. In order to do so, one needs to use the
`resolvectl` command as such:

```bash
$ sudo resolvectl flush-caches
```

If one might wants to perform a non cache-destructive query they can use dig and
specify their DNS server as such:

```bash
$ #   @dnsserver domain
$ dig @8.8.8.8   google.com
```
