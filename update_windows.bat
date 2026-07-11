@echo off
title httfacelond - Updater
echo ====================================================
echo             httfacelond Auto-Updater            
echo ====================================================
echo.
echo [1/3] Pulling latest code changes from GitHub...
git pull
echo.
echo [2/3] Checking virtual environment...
if exist venv\Scripts\activate.bat (
    echo Activating virtual environment...
    call venv\Scripts\activate.bat
    echo Updating dependencies...
    python -m pip install --upgrade pip
    python -m pip install --force-reinstall numpy==1.26.4 scipy==1.11.4 scikit-image==0.22.0 albumentations==1.4.3 opencv-python==4.10.0.84
    python -m pip install -r requirements.txt --upgrade --upgrade-strategy eager
) else (
    echo [Warning] Virtual environment (venv) not found. 
    echo If you want dependencies to update automatically, please create a 'venv' directory.
)
echo.
echo [3/3] Update process complete!
echo ====================================================
pause
