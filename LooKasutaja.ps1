# 1. Küsi kasutajalt andmed
$eesnimi = Read-Host "Sisesta eesnimi"
$perenimi = Read-Host "Sisesta perenimi"

# 2. Loo kasutajanimi formaadis ees.perenimi ja muuda see väikesteks tähtedeks
$kasutajanimi = "$($eesnimi).$($perenimi)".ToLower()
$taisnimi = "$eesnimi $perenimi"
$kirjeldus = "Kasutaja $taisnimi"

# Parooli ettevalmistamine (turvaline string)
$parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

# 3. & 4. Kasutaja loomine koos veahaldusega
# Kasutame -ErrorAction SilentlyContinue, et peita süsteemne punane veateade
New-LocalUser -Name $kasutajanimi -Password $parool -FullName $taisnimi -Description $kirjeldus -ErrorAction SilentlyContinue

# Kontrollime süsteemset muutujat $?, mis näitab, kas eelmine käsk õnnestus
if ($?) {
    Write-Host "Kasutaja $kasutajanimi loomine õnnestus!" -ForegroundColor Green
} else {
    Write-Host "Viga: Kasutaja $kasutajanimi loomine ebaõnnestus. Võimalik, et selline kasutaja on juba olemas või puuduvad õigused." -ForegroundColor Red
}