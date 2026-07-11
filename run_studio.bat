@echo off
title httfacelond
echo Activating virtual environment...
if not exist venv\Scripts\activate.bat (
    echo [Error] Virtual environment not found.
    echo Please run install_windows_venv.bat first.
    pause
    exit /b 1
)
call venv\Scripts\activate.bat
if %errorlevel% neq 0 (
    echo [Error] Failed to activate virtual environment.
    pause
    exit /b 1
)
echo Starting application...
python -c "import sys; print('[Python]', sys.executable)"
python app.py
pause
