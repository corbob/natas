
$currentLevel = 2
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org/files/users.txt"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session
$page.Rawcontent

Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session



