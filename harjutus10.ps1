# Harjutus 10 – do until + continue

# Loendur, mitu korda sõnumit näidati
$count = 0

do {
    # Kontrolli, kas Notepad töötab
    $np = Get-Process -Name "notepad" -ErrorAction SilentlyContinue

    # Kui Notepad töötab, kuva sõnum ja jätka tsüklit
    if ($np) {
        Write-Host "Notepad is running"
        $count++
        Start-Sleep -Seconds 1
        continue
    }

}
until (-not $np)

# Kui tsükkel lõppeb, näita loendurit
Write-Host $count
