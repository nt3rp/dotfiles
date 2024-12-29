# TODO: Do this same thing, but for *nix systems

$hostname = hostname
$key_path = "$HOME\.ssh\$hostname"
$git_email = git config user.email
if (-not(Test-Path -Path $key_path)) {
  echo "SSH keypair missing for $hostname; generating a new keypair."
  ssh-keygen -t ed25519 -C $git_email -f $key_path
}

# This may look like a lot, but it's mostly parsing the output
# of the Github CLI and getting the list of matching scopes.
$scopes = "admin:public_key", "admin:ssh_signing_key"
$github_args = "--hostname", "github.com", "--scopes", $scopes
$github_auth = gh auth status
$logged_in = $LastExitCode -eq 0
# TODO: Why is it $github_args here and @github_args elsewhere?
if (-not $logged_in) {
  gh auth login $github_args
}

$github_scopes = ((gh auth status)[-1] -split "Token scopes: ")[-1] -split ", " -replace "'|"
$matching_scopes = Compare-Object $scopes $github_scopes -ExcludeDifferent -IncludeEqual -PassThru
if ($logged_in -And (Compare-Object $matching_scopes $scopes)) {
  gh auth refresh @github_args
}

$public_key = (Get-Content -Path "$key_path.pub").split(" ")[1]
$matching_key = (gh ssh-key list).Where({ $_ -match $public_key })
if (-not $matching_key) {
  gh ssh-key add "$key_path.pub" --title "$hostname ($CHEZMOI_OS)" --type "authentication"
}

# TODO: Add to SSH agent.