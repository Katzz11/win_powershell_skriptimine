# Harjutus 11 – Kalkulaator PowerShellis

# Küsi kasutajalt kaks arvu (double toetab komakohti)
$number1 = [double](Read-Host "Enter first number")
$number2 = [double](Read-Host "Enter second number")

# Kuvame menüü
Write-Host "Calculator"
Write-Host "1: Addition"
Write-Host "2: Subtraction"
Write-Host "3: Division"
Write-Host "4: Multiplication"

$choice = Read-Host "Enter your choice (1-4)"

switch ($choice) {

    "1" {
        $sum = $number1 + $number2
        Write-Host "Sum is : $sum" -ForegroundColor Green
    }

    "2" {
        $sub = $number1 - $number2
        Write-Host "Difference is : $sub" -ForegroundColor Yellow
    }

    "3" {
        if ($number2 -eq 0) {
            Write-Host "Cannot divide by zero!" -ForegroundColor Red
        }
        else {
            $div = $number1 / $number2
            Write-Host "Division result is : $div" -ForegroundColor Cyan
        }
    }

    "4" {
        $mul = $number1 * $number2
        Write-Host "Multiplication result is : $mul" -ForegroundColor Magenta
    }

    default {
        Write-Host "Invalid choice!" -ForegroundColor Red
    }
}
