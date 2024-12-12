@echo off
echo [94m🎮 Starting Quiz Game Setup...[0m

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [91m❌ Python is not installed. Please install Python first.[0m
    exit /b 1
)

:: Check if virtual environment exists, if not create it
if not exist venv (
    echo [94m📦 Creating virtual environment...[0m
    python -m venv venv
)

:: Activate virtual environment
echo [94m🔧 Activating virtual environment...[0m
call venv\Scripts\activate

:: Install requirements
echo [94m📥 Installing dependencies...[0m
pip install -r requirements.txt

:: Check if quiz_data.json exists
if not exist quiz_data.json (
    echo [91m❌ quiz_data.json not found. Please make sure the file exists.[0m
    exit /b 1
)

:: Run the application
echo [92m🚀 Starting the Quiz Game...[0m
python app.py

pause 