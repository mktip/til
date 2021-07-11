# Get Copr API keys

If one wishes to use the `copr-cli` tool to manage their copr repos then most likely they will need to generate API
keys. To do so, one simply needs to visit the copr [API page](https://copr.fedorainfracloud.org/api/) and login to their
account.

They will be presented with an ini formatted code block as follows:

```ini
[copr-cli]
login = somerandomblah
username = yourusername
token = averysecrettoken
copr_url = acoprurlwillbehere
# expiration date: 1970-01-01
```

Save it into `~/.config/copr`, and then `copr-cli` will be able to read it automatically.
