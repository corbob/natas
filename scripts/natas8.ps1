
$currentLevel = 8
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest "$currentURL/index-source.html" -Credential $credential -SessionVariable session
$page.content


