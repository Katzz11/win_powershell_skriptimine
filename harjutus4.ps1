# Harjutus 4 – Võrdlemine ja menüü

# --- OSA I: Küsi kaks arvu ja näita suurem ---

# Küsi kasutajalt kaks väärtust
$value1 = Read-Host "Enter first number"
$value2 = Read-Host "Enter second number"

# Muuda sisestused arvudeks
$value1 = [int]$value1
$value2 = [int]$value2

# Võrdle ja väljasta tulemus
if ($value1 -gt $value2) {
    Write-Host "The higher number is: $value1" -ForegroundColor Green
}
elseif ($value2 -gt $value1) {
    Write-Host "The higher number is: $value2" -ForegroundColor Green
}
else {
    Write-Host "Both numbers are equal." -ForegroundColor Yellow
}

# --- OSA II: Menüü riikide ja pealinnadega ---

Write-Host ""
Write-Host "Select Country:" -ForegroundColor Cyan
Write-Host "1. Estonia"
Write-Host "2. Finland"
Write-Host "3. Sweden"
Write-Host "4. Latvia"

$choice = Read-Host "Enter your choice (1-4)"

switch ($choice) {
    "1" { Write-Host "Capital: Tallinn" -ForegroundColor Green }
    "2" { Write-Host "Capital: Helsinki" -ForegroundColor Green }
    "3" { Write-Host "Capital: Stockholm" -ForegroundColor Green }
    "4" { Write-Host "Capital: Riga" -ForegroundColor Green }
    default { Write-Host "Invalid choice!" -ForegroundColor Red }
}
