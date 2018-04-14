```
$ git config --global core.editor "vim"
$ git config --global pull.rebase true
$ git config --global format.pretty "format:%C(yellow)%h %Cblue%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s"
$ git config --global alias.lg "log --graph --pretty=format:'%C(yellow)%d%Creset %C(cyan)%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short --all"
$ git config --global alias.sb "show-branch --more=12"
```