# kokopis/dotfiles
**WARNING: FILES NOT WELL TESTED. CHECK CODES AND CONFIGURATIONS YOURSELF FIRST.**  

## Installing
Running
```bash
chmod +x ./install.bash; ./install.bash
```
should apply configurations the way I like them to. Credentials for super-user authority may be needed. 

## DISCLAIMERS & CAVEATS
- These configurations and are not well tested and may not work on or even break the system, especially with older OS X releases and Linux.
- Running `install.bash` causes a significant amount of network traffic. 
- The script copies all contents of repo into `~/Developer/github.com/kokopis/dotfiles` and creates symlinks from `$HOME` to them. If you use [ghq](https://github.com/x-motemen/ghq) to manage git repos, `~/Developer` will be used as `$GHQ_ROOT`.
