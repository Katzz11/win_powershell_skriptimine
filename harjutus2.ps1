# Harjutus 2 – Hashtable arvutused

# Esimene hashtable: mitu päeva iga inimene töötas
$days = @{
    John = 12
    Joe  = 20
    Mary = 18
}

# Teine hashtable: palk päevas
$salary = @{
    John = 100
    Joe  = 120
    Mary = 150
}

# Kolmas hashtable: kogupalk = DaysWorked * SalaryPerDay
$total = @{
    John = $days.John * $salary.John
    Joe  = $days.Joe  * $salary.Joe
    Mary = $days.Mary * $salary.Mary
}

# Väljasta tulemus
$total
