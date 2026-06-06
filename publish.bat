@echo off
REM Publish portfolio to GitHub Pages using Git and optionally GitHub CLI.
cd /d "%~dp0"

REM If git is not installed, download and install it from https://git-scm.com/
REM If gh is not installed, download and install it from https://cli.github.com/

echo Checking git availability...
git --version
if errorlevel 1 (
    echo.
    echo Git is not available in PATH. Install Git first: https://git-scm.com/
    pause
    exit /b 1
)

echo.
git init
git branch -M main
git add .
git commit -m "Initial portfolio"
echo.
echo If you have GitHub CLI installed, you can create and push the repo automatically.
if exist "%ProgramFiles%\GitHub CLI\gh.exe" (
    echo Using GitHub CLI to create repo and push.
    gh auth login
    gh repo create mayibongwe-portfolio --public --source=. --remote=origin --push
) else (
    echo GitHub CLI not found.
    echo Create a GitHub repo manually and then run:
    echo git remote add origin https://github.com/<your-username>/mayibongwe-portfolio.git
    echo git push -u origin main
)
echo.
echo Done. Then enable GitHub Pages in the repository settings.
pause