param($box_url)
cat Vagrantfile | %{$_ -replace "(http\:\/\/)([^/]+)(/)","`$1$box_url`$3"}
