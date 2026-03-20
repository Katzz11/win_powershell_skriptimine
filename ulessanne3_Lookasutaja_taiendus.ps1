# 1. Küsi kasutajalt andmed
$eesnimi = Read-Host "Sisesta eesnimi"
$perenimi = Read-Host "Sisesta perenimi"

# 2. Loo muutujad
$kasutajanimi = "$($eesnimi).$($perenimi)".ToLower()
$taisnimi = "$eesnimi $perenimi"

# Kontrollime, kas kasutaja on juba AD-s olemas
$olemasolevKasutaja = Get-ADUser -Filter "SamAccountName -eq '$kasutajanimi'" -ErrorAction SilentlyContinue

if ($olemasolevKasutaja) {
    # Kui kasutaja on olemas, väljastame viisaka teate (nagu näidises)
    Write-Host "User $kasutajanimi already exists - can not add this user" -ForegroundColor Yellow
} else {
    # Kui kasutajat ei ole, proovime teda luua
    try {
        # NB! AD-s on vaja määrata ka parool ja tee (OU), siin on lihtsustatud näide:
        $parool = ConvertTo-SecureString "Parool123!" -AsPlainText -Force
        
        New-ADUser -Name $taisnimi `
                   -SamAccountName $kasutajanimi `
                   -GivenName $eesnimi `
                   -Surname $perenimi `
                   -Enabled $true `
                   -AccountPassword $parool `
                   -ErrorAction Stop

        # Kontrollime, kas viimane käsk õnnestus ($? abil)
        if ($?) {
            Write-Host "New user $kasutajanimi added successfully" -ForegroundColor Green
        }
    } catch {
        Write-Host "Viga: Kasutaja loomine ebaõnnestus. Tehniline viga: $_" -ForegroundColor Red
    }
}
