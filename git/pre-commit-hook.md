# Pre Commit hook

Git offers many hooks to use for various tasks that need to be run pre/post
commits, merges and many other events. To utilise them one simply needs to add
a script to `.git/hooks/` and name it according to their need based on a
predetermined set of names such as `pre-commit`. This can be quite helpful
especiially for linting locally before making a commit.

```shell
# Make sure files pass the lint check before committing
if ! lint files; then
     cat <<\EOF
 Error: Files failed lint check
EOF
    exit 1
fi
```
