# Set the execution policy for the current session to allow running the script
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

Write-Host "Starting build process for 'You'll Never Catch Me'..." -ForegroundColor Cyan

# Check if build.py exists
if (Test-Path "build.py") {
    python build.py
    Write-Host "Build process completed." -ForegroundColor Green
} else {
    Write-Host "Error: build.py not found in the current directory." -ForegroundColor Red
}

pause