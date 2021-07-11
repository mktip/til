# Upload source rpm to Copr

Using the `copr-cli` tool, one can easily upload an srpm they prepared to one of their copr repos as such.

```shell
$ #        action projname path-to-srpm
$ copr-cli build  cbonsai  cbonsai-v1.2.1-1.fc34.src.rpm
```

The above command will upload the `cbonsai` srpm to the cbonsai project on my copr account.
