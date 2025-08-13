# Resume Builder - Setup & Start Script
# PowerShell version

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "        Resume Builder - Setup & Start" -ForegroundColor Cyan  
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Check if Node.js is installed
try {
    $nodeVersion = node --version 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Node.js version: $nodeVersion" -ForegroundColor Green
    } else {
        throw "Node.js not found"
    }
} catch {
    Write-Host "ERROR: Node.js is not installed!" -ForegroundColor Red
    Write-Host "Please install Node.js from https://nodejs.org/" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if npm is installed
try {
    $npmVersion = npm --version 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "npm version: $npmVersion" -ForegroundColor Green
        Write-Host ""
    } else {
        throw "npm not found"
    }
} catch {
    Write-Host "ERROR: npm is not installed!" -ForegroundColor Red
    Write-Host "Please install Node.js which includes npm" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if node_modules exists
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies... This may take a few minutes." -ForegroundColor Yellow
    Write-Host ""
    
    try {
        npm install
        if ($LASTEXITCODE -ne 0) {
            throw "npm install failed"
        }
        Write-Host ""
        Write-Host "Dependencies installed successfully!" -ForegroundColor Green
        Write-Host ""
    } catch {
        Write-Host ""
        Write-Host "ERROR: Failed to install dependencies!" -ForegroundColor Red
        Write-Host "Please check your internet connection and try again." -ForegroundColor Yellow
        Write-Host ""
        Read-Host "Press Enter to exit"
        exit 1
    }
} else {
    Write-Host "Dependencies already installed." -ForegroundColor Green
    Write-Host ""
}

Write-Host "Starting the Resume Builder..." -ForegroundColor Green
Write-Host ""
Write-Host "The application will open in your default browser." -ForegroundColor Cyan
Write-Host "If it doesn't open automatically, go to: http://localhost:3000" -ForegroundColor Cyan
Write-Host ""
Write-Host "To stop the server, press Ctrl+C in this window." -ForegroundColor Yellow
Write-Host ""

# Start the development server
try {
    npm start
} catch {
    Write-Host "Error starting the application!" -ForegroundColor Red
    Read-Host "Press Enter to exit"
}
