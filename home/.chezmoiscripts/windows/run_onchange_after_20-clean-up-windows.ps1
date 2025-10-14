if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
  if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
    $CommandLine = "-NoExit -File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
    Start-Process -Wait -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
    Exit
  }
}

function Create-Registry-Key {
    param ($Path, $Key, $Value)

    if (!(Test-Path $Path)) {
        New-Item -Path $Path -Force
    }

    # If a key is provided, set the property
    if ($Key) {
        Set-ItemProperty -Path $Path -Name $Key -Value $Value -Force
    }
}

# Disable and remove Cortana
Create-Registry-Key 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' 'AllowCortana' 0
Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage

# Disable and remove Co-Pilot
Create-Registry-Key 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot' 'TurnOffWindowsCopilot' 1
Create-Registry-Key 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot' 'TurnOffWindowsCopilot' 1
Create-Registry-Key 'HKLM:\SOFTWARE\Policies\Microsoft\Edge' 'HubsSidebarEnabled' 0
Create-Registry-Key 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer' 'DisableSearchBoxSuggestions' 1
Create-Registry-Key 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' 'DisableSearchBoxSuggestions' 1
Get-AppxPackage *CoPilot* -AllUsers | Remove-AppPackage -AllUsers
Get-AppxProvisionedPackage -Online | where-object {$_.PackageName -like "*Copilot*"} | Remove-AppxProvisionedPackage -online

# Disable and remove Recall
Disable-WindowsOptionalFeature -Online -FeatureName "Recall"

# Revert Windows 11 right-click menu to full menu
Create-Registry-Key 'HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32'