$repo = "C:\Users\HP\OneDrive\Desktop\UTP Machine Learning\all_experiments"

while ($true) {

    Set-Location $repo

    $changes = git status --porcelain

    if ($changes) {
        Write-Host "Changes detected. Syncing..." -ForegroundColor Green

        git add Lab_02.ipynb predict_passenger.py

        git commit -m "Auto-sync changes"

        git push

        Write-Host "GitHub updated successfully!" -ForegroundColor Cyan
    }
    else {
        Write-Host "No changes. Checking again in 5 minutes..." -ForegroundColor Gray
    }

    Start-Sleep -Seconds 300
}