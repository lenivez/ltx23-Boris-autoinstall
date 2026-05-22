#!/bin/bash
set -e

echo "=== LTX-2.3 — автоустановка моделей (Boris Edition) ==="
bash "$(dirname "$0")/install_ltx23_models.sh"
echo "=== Готово! ==="
