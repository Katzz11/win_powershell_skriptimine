# Harjutus 8 – Kontrolli, kas Notepad töötab

while (Get-Process -Name "notepad" -ErrorAction SilentlyContinue) {
    Write-Host "Notepad is running"
    Start-Sleep -Seconds 1
}

Write-Host "All Notepad windows are closed."
