# `dotfiles`

nt3rp's dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi)

Install them with:

```
chezmoi init nt3rp
```

## TODO

- Fix OS folder differences
- Revisit old install scripts.
- Generate SSH keys github CLI, etc. in darwin / linux
- [SSH permissions](https://www.chezmoi.io/user-guide/frequently-asked-questions/troubleshooting/#chezmoi-makes-sshconfig-group-writeable-how-do-i-stop-this) 

## Notes

If you are in Windows, there are a few things to consider:

- The easiest way to install `chezmoi` is `winget install twpayne.chezmoi`
- You _may_ need to make some scripts executable via `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`
- While care has been taken to avoid running as an administrator, you _may_ need to run Powershell as an admin because of how `chezmoi` handles Symlinks in Windows (citation needed)—among other reasons

If you are in Linux / Mac:

- Follow the `chezmoi` [installation instructions](https://www.chezmoi.io/install)