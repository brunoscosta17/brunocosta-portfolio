@echo off
cd /d %~dp0

echo ==========================
echo 🚀 Iniciando Angular Local
echo ==========================

where ng >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
  echo ❌ Angular CLI não encontrado. Instale com: npm install -g @angular/cli
  pause
  exit /b
)

ng serve --open
