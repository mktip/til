# Remove File from repo

If in the history of a git repo, by mistake, one commited a private API Key, or whatever secret token into the repo,
then history rewriting is needed to remove the secret from the repo's history. The "up-to-date" method of doing so is
done via a git plugin called `git-filter-repo`. One would need to install it as it is not part of the default git
installation.

```bash
$ git filter-repo --invert-paths --path src/secrets/my-aws-key.txt --path .env/who-commited-this
```

* source: [how to remove file from git history](https://stackoverflow.com/questions/43762338/how-to-remove-file-from-git-history)
