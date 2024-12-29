# `dotfiles`

nt3rp's dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi)

Install them with:

```
chezmoi init nt3rp
```

## Notes

If you are in Windows, there are a few things to consider:

- The easiest way to install `chezmoi` is `winget install twpayne.chezmoi`
- You _may_ need to make some scripts executable via `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`
- While care has been taken to avoid running as an administrator, you _will_ need to run Powershell as an admin because of [how Windows handles symlinks](https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-10/security/threat-protection/security-policy-settings/create-symbolic-links)

If you are in Linux / Mac:

- Follow the `chezmoi` [installation instructions](https://www.chezmoi.io/install)