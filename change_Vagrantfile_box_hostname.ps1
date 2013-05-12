param($box_url)
(Get-Content Vagrantfile) | Foreach-Object {$_ -replace "(http\:\/\/)([^/]+)(/)","`$1 $box_url`$3"} | Set-Content Vagrantfile
(Get-Content Vagrantfile) | Foreach-Object {$_ -replace "(http\:\/\/) ([^/]+)(/)","`$1`$2`$3"} | Set-Content Vagrantfile
