@echo off
cd /d %~dp0

echo ========================
echo 🧹 Limpando dist/...
echo ========================

IF EXIST dist (
  rmdir /s /q dist
  echo ✅ dist/ removida com sucesso.
) ELSE (
  echo ℹ️ Nenhuma pasta dist/ encontrada.
)

pause
