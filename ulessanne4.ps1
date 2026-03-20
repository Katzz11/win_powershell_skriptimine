# 1. Küsi kasutajalt andmed
$eesnimi = Read-Host "Sisesta eesnimi, keda soovid kustutada"
$perenimi = Read-Host "Sisesta perenimi, keda soovid kustutada"

# 2. Loo kasutajanimi (eesnimi.perenimi ja väiketähed)
$kasutajanimi = "$($eesnimi).$($perenimi)".ToLower()

# 3. & 4. Kasutaja kustutamine ja veahaldus
# Kasutame -ErrorAction SilentlyContinue, et peita punane süsteemne viga
Remove-ADUser -Identity $kasutajanimi -Confirm:$false -ErrorAction SilentlyContinue

# Kontrollime, kas eelmine käsk õnnestus ($?)
if ($?) {
    # Kui kustutamine õnnestus
    Write-Host "User $kasutajanimi removed successfully" -ForegroundColor Green
} else {
    # Kui tekkis viga (kasutajat pole või muud õiguste probleemid)
    Write-Host "User $kasutajanimi not found or could not be removed" -ForegroundColor Red
}