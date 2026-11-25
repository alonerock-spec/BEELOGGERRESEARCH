#!/data/data/com.termux/files/usr/bin/bash

set -e

SOURCE="$HOME/storage/shared/Documents/Хакинг/BeeLoggerResearch"
PROJECT="$HOME/projects/BeeLoggerResearch"

echo "========================================"
echo " BeeLoggerResearch — безопасная установка"
echo "========================================"

mkdir -p "$HOME/projects"

rm -rf "$PROJECT"
cp -r "$SOURCE" "$PROJECT"

cd "$PROJECT"

echo
echo "[1/4] Создание Python-окружения..."
python -m venv .venv

echo
echo "[2/4] Активация..."
source .venv/bin/activate

echo
echo "[3/4] Обновление инструментов..."
python -m pip install --upgrade pip setuptools wheel

echo
echo "[4/4] Проверка Python-файлов..."
python -m py_compile bee.py updater.py Templates/Bee.py

echo
echo "========================================"
echo " Установка/проверка завершена"
echo "========================================"
echo "Проект: $PROJECT"
echo "Python: $(python --version)"
echo
echo "Запуск кейлоггера НЕ выполнялся."
echo "========================================"
