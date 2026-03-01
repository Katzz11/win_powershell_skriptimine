# Harjutus 7 – Juhuslikud grupid 20 õpilasele

# Värvigrupid
$groups = @("Red", "Green", "Yellow", "Blue")

# Lõpptulemus salvestatakse siia
$result = @()

# Loo 20 õpilast ja määra juhuslik grupp
for ($i = 1; $i -le 20; $i++) {

    # Vali juhuslik värv
    $randomGroup = Get-Random -InputObject $groups

    # Lisa tulemus tabelisse
    $result += [PSCustomObject]@{
        RollNumber = $i
        Group      = $randomGroup
    }
}

# Kuva tabel
$result | Format-Table -AutoSize
