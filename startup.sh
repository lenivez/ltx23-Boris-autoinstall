#!/bin/bash
set -e

echo "=== LTX-2.3 — автоустановка моделей (Boris Edition) ==="
bash "$(dirname "$0")/install_ltx23_models.sh"

echo "=== Установка кастомных нодов ==="
cd /workspace/ComfyUI/custom_nodes

if [ ! -d "WhatDreamsCost-ComfyUI" ]; then
    git clone https://github.com/WhatDreamsCost/WhatDreamsCost-ComfyUI
    cd WhatDreamsCost-ComfyUI
    [ -f requirements.txt ] && pip install -r requirements.txt
    cd ..
else
    echo "WhatDreamsCost-ComfyUI уже установлен"
fi

echo "=== Готово! ==="
