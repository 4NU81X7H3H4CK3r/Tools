# Users and Groups

## Enumerate users
```
net user
net user /domain
net user $domain_user /domain
```

## Enumerate groups
```

net group /domain
net localgroup administrators
```
## PowerView

__Import Powerview__
```
Import-Module .\PowerView.ps1
```
__Current domain details__
```
PS> Get-NetDomain
```
__List Domain Admin Members__
```
PS> Get-NetGroupMemeber -GroupName "Domain Admins"
```
__List all domain computers__
```
PS> Get-NetComputer
```
__Logged on users enumeration__
```
PS> Get-NetSession -ComputerName $hostname
```
__SPNs__
```
PS> Get-NetUser -SPN | select serviceprincipalname
```
