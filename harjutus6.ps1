# Harjutus 6 – CSV import ja kooliastme määramine

# Impordi CSV fail
$students = Import-Csv "students.csv"

# Loo uus tabel koos kooliastmega
$result = foreach ($s in $students) {

    if ($s.Age -ge 4 -and $s.Age -le 10) {
        $school = "Junior School"
    }
    elseif ($s.Age -ge 11 -and $s.Age -le 17) {
        $school = "Senior School"
    }
    else {
        $school = "Out of range"
    }

    # Tagasta uus objekt
    [PSCustomObject]@{
        Name   = $s.Name
        Age    = $s.Age
        School = $school
    }
}

# Kuva tulemus tabelina
$result | Format-Table -AutoSize
