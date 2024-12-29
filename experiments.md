# Experiments

This is a list of things you want to try out before upgrading to Windows 11 or re-installing.

- [ ] Add OBS setup to `chezmoi`
- [ ] Auto-configure audio drivers / stream routing config
- [ ] FIX AUDIO ROUTING -- SIMPLIFY
- [ ] Programs to add / install
  - [ ] Loop Midi (or alternative for changing 'instrument' in VST host)
  - [ ] Element (or alternative VST host)
  - [ ] Stream Deck - Plugins??
  - [ ] `mise` (in lieu of `asdf`)
  - [ ] GDrive
  - [ ] Capture card
  - [ ] Virtual Audio Cable?

## ??? Tier
- [ ] Photo organizer replacement
- [ ] File manager replacement (Files? Files seems to be slow)
- [ ] File structure on new HD?
- [ ] OBS
    - [ ] Encoder settings?
    - [ ] Plugins?
- [ ] ACTUAL BACKUPS
  - In current setup ... what actually needs to be backed up?
  - MAYBE just backup GDrive?
- [ ] VSTs?
- [ ] Retroarch
- [ ] ASIO -  realtime monitoring of behringer
- [ ] Righthand USB port / headphone jacks
- [ ] Fan noise control
- [ ] Backup Kanbanist [link](https://github.com/mwakerman/kanbanist)
- [ ] Disable Cortana, Recall, etc.
- [ ] NVidia app / drivers?
- [ ] WSL installation? / HKEY setup
- [ ] Auto-download unautomatable files?
  - E.g. https://cli.github.com/manual/gh_release_download (pass in repository? only works for GH)
  - Alternatively, can ALMOST automate via this: https://stackoverflow.com/questions/24987542/is-there-a-link-to-github-for-downloading-a-file-in-the-latest-release-of-a-repo
- [ ] Script symbolic link permissions
    - https://stackoverflow.com/questions/58038683/allow-mklink-for-a-non-admin-user
    - https://serverfault.com/questions/848388/how-to-edit-local-group-policy-with-a-script
    - `whoami /priv`

## Low Priority
- [ ] OBS: Use relative path for files?
  - Alternatively, if you continue to use home folder system, and same file stricture, might be ok
  - Or just find and replace
- [ ] Change default location of My Documents, etc.
- [ ] Remove templates as much as possible -- use environment variables
- [ ] Conditionally set resolution of VSCode
- [ ] Prune / update tools list (`winget list | Select-String "winget"` to see winget installed)
- [ ] Drop requirement for admin mode when installing
- [ ] 'Profiles' / 'tags' in chezmoi config (to determine packages, settings) 

## Resources / Notes

- [Searching `winget`](https://winget.run/pkg/VB-Audio)
- [Win 11 Setup](https://www.makeuseof.com/windows-11-select-edition-during-install/)
- [Flex ASIO](https://github.com/dechamps/FlexASIO)
- Set all audio sources at 48kHz

## TODO:
- Adjust zoom level conditionally somehow
- Remove templating where not needed
- Figure out admin issue -- git will run as admin in windows / or at least will do so when powershell is run as admin