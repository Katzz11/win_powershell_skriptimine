# Harjutus 3 – Read-Host ja Write-Host

# Küsi kasutajalt nimi
$name = Read-Host "What is your name"

# Kuva nimi rohelise värviga
Write-Host "Your name is: $name" -ForegroundColor Green
