@echo off
cd /d %~dp0

echo =============================
echo 🔧 Buildando o projeto Angular...
echo =============================

call npm run build

IF %ERRORLEVEL% NEQ 0 (
  echo ❌ Erro ao gerar o build.
  pause
  exit /b %ERRORLEVEL%
)

echo.
echo =============================
echo 🚀 Publicando para GitHub Pages...
echo =============================

call npm run deploy

IF %ERRORLEVEL% EQU 0 (
  echo ✅ Site publicado com sucesso!
  echo 🌐 Acesse: https://brunoscosta17.github.io/brunocosta-portfolio/
) ELSE (
  echo ❌ Falha ao publicar.
)

pause
