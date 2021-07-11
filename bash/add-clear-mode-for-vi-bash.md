# Add Clear Mode Option for VI mode in bash

Unfortunately, by default the vi mode in bash does not have a binding to clean the screen while in insert mode. In order
to add it one needs to set it manually as such:

```bash
bind -m vi-insert 'Control-l: clear-screen'
```

The line above can be ran (only lasts within session) or added to one's `.bashrc`.
