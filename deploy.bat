@echo off
cd /d %~dp0

:: CONFIGURAÇÕES
set DOMAIN=brunocosta.tech
set DIST_DIR=dist\brunocosta-portfolio\browser

echo =============================
echo 🔧 Limpando build anterior...
echo =============================
if exist dist (
  rmdir /s /q dist
)

echo =============================
echo 🔧 Buildando o projeto Angular...
echo =============================
call ng build --configuration=production --base-href=/

IF %ERRORLEVEL% NEQ 0 (
  echo ❌ Erro ao gerar o build.
  pause
  exit /b %ERRORLEVEL%
)

echo =============================
echo 📝 Inserindo arquivo CNAME...
echo =============================
echo %DOMAIN% > %DIST_DIR%\CNAME

echo =============================
echo 🚀 Publicando para GitHub Pages...
echo =============================
call npx angular-cli-ghpages --dir=%DIST_DIR%

IF %ERRORLEVEL% EQU 0 (
  echo ✅ Site publicado com sucesso!
  echo 🌐 Acesse: https://%DOMAIN%/
) ELSE (
  echo ❌ Falha ao publicar.
)

pause
