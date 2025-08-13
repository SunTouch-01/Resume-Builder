@echo off
echo ================================================
echo        Resume Builder - Setup and Start
echo ================================================
echo.

REM Change to the script directory
cd /d "%~dp0"

REM Check if Node.js is installed
echo Checking for Node.js...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Node.js is not installed!
    echo Please install Node.js from https://nodejs.org/
    echo.
    echo Press any key to exit...
    pause >nul
    exit /b 1
)

echo Node.js version:
node --version
echo.

REM Check if npm is installed
echo Checking for npm...
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ERROR: npm is not installed!
    echo Please install Node.js which includes npm
    echo.
    echo Press any key to exit...
    pause >nul
    exit /b 1
)

echo npm version:
npm --version
echo.

REM Check if node_modules exists
if not exist "node_modules" (
    echo Installing dependencies... This may take a few minutes.
    echo Please wait...
    echo.
    call npm install
    
    if %errorlevel% neq 0 (
        echo.
        echo ERROR: Failed to install dependencies!
        echo Please check your internet connection and try again.
        echo.
        echo Press any key to exit...
        pause >nul
        exit /b 1
    )
    
    echo.
    echo Dependencies installed successfully!
    echo.
) else (
    echo Dependencies already installed.
    echo.
)

echo Starting the Resume Builder...
echo.
echo The application will open in your default browser.
echo If it doesn't open automatically, go to: http://localhost:3000
echo.
echo To stop the server, press Ctrl+C in this window.
echo.

REM Start the development server
call npm start

REM Keep the window open if there's an error
if %errorlevel% neq 0 (
    echo.
    echo There was an error starting the application.
    echo Press any key to exit...
    pause >nul
)
