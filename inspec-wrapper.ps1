<#
.SYNOPSIS

.DESCRIPTION

.NOTES
    File Name       : 
    Author          : Rick Clemens
    Requires        : 
    --------------------------------------------------------------
    Change Log:
    --------------------------------------------------------------
    1.0.0.0
.PARAMETER profile

.PARAMETER junit

.PARAMETER html

.EXAMPLE

#>
param(
[Parameter(Mandatory=$True)]
[string]$profile,
[Parameter()]
[string]$remoteServer="",
[Parameter()]
[switch]$report
)

if($report) {
    $reporter = "--reporter cli junit:cis-results-junit.xml html:cis-results-html.html"
} else {
    $reporter = ""
}

if($remoteServer){
    $login = Get-Credential -Message "Enter User in DOMAIN\User format."
    $server = "-t winrm://$($login.UserName)@$remoteServer --password $($login.GetNetworkCredential().Password)"
} else {
    $server = ""
}

Start-Process -FilePath "inspec" -ArgumentList "exec $profile --chef-license accept $reporter $server" -Passthru -Wait -NoNewWindow