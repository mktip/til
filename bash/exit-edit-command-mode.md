# Exit Bash's edit command mode (from vim)

When writing complex commands in the shell, sometimes one needs to drop into their editor to ease the process. In bash
this is done by either `<C-x><C-e>` (Emacs line mode) or by pressing `v` (VI line mode).


If one's editor is `neo/vim`, then existing, even with `:q!` would run whatever they had in their editor which can be
dangerous especially if the intention was to abort editing. In order to enforce aborting the execution of the buffer's
content on exit, one can instruct `neo/vim` to exit with a none-zero value as such:

```vim
:cq
```
