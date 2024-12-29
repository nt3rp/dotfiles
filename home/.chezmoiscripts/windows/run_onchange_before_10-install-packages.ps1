# $previouslyInstalled =
#   "antibodysoftware.wiztree",
#   "not.available.in.winget.lossless-cut"

# $gamingPackages =
#   "libretro.retroarch",
#   "valve.steam"

# $streamingPackages = 
#   "elgato.streamdeck",
#   "Elgato.4KCaptureUtility",
#   "obsproject.obsstudio",
#   "vb-audio.voicemeeter.potato"

$packages =
  "7zip.7zip",
  "discord.discord",
  "git.git",
  "github.cli",
  "google.googledrive",
  "microsoft.visualstudiocode",
  "obsidian.obsidian",
  "rescuetime.desktopapp",
  "spotify.spotify",
  "suse.RancherDesktop",
  "twpayne.chezmoi",
  "videolan.vlc",
  "vivaldi.vivaldi",
  "wez.wezterm"

foreach ($package in $packages) {
  winget install $package
}