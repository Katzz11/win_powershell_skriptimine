# 1. Küsime kasutajalt ees- ja perenime
$eesnimi = Read-Host "Sisesta oma eesnimi"
$perenimi = Read-Host "Sisesta oma perenimi"

# 2. Loome kasutajanime formaadis ees.perenimi ja muudame kõik väiketähtedeks
$kasutajanimi = "$($eesnimi).$($perenimi)".ToLower()

# Kuvame info, keda hakatakse kustutama (nagu ülesande näidises)
Write-Host "Kustutav kasutaja on $kasutajanimi"

# 3. & 4. Kasutaja kustutamine koos veahaldusega
# Kasutame -ErrorAction SilentlyContinue, et peita punane süsteemne veateade
Remove-LocalUser -Name $kasutajanimi -ErrorAction SilentlyContinue

# Kontrollime süsteemset muutujat $?, mis näitab, kas eelmine käsk õnnestus
if ($?) {
    # Kui kustutamine õnnestus ($? on True)
    Write-Host "Kasutaja $kasutajanimi on kustutatud"
} else {
    # Kui tekkis viga (kasutajat pole või puuduvad õigused)
    Write-Host "Tekkinud probleem kasutaja kustutamisega"
}
