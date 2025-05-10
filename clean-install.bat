@echo off
cd /d %~dp0

echo ===============================
echo 🧹 Limpando e instalando tudo...
echo ===============================

IF EXIST node_modules (
  rmdir /s /q node_modules
)

IF EXIST package-lock.json (
  del /q package-lock.json
)

echo.
echo 📦 Instalando dependências...
npm install
