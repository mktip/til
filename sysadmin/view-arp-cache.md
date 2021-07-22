# View ARP Cache

Using the `ip` utility one can easily view the arp cache, which is under the `neighbor` option. It can be used to view
some of the machines on the local network as well (_neighboring_ machines):

```bash
$ ip n # short for neighbor
192.168.1.111 dev wlp3s0 lladdr aa:aa:aa:aa:aa:aa REACHABLE
```
