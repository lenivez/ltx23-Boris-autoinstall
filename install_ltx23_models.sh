#!/bin/bash
set -e
echo "=== LTX-2.3 — установка моделей (Boris Edition) ==="
mkdir -p /workspace/ComfyUI/models/checkpoints/LTX2.3
mkdir -p /workspace/ComfyUI/models/loras/LTX2.3
mkdir -p /workspace/ComfyUI/models/text_encoders/LTX2.3
mkdir -p /workspace/ComfyUI/models/vae/LTX2.3
mkdir -p /workspace/ComfyUI/models/latent_upscale_models

echo "=== Основная модель dev fp8 (28GB) ==="
wget -O /workspace/ComfyUI/models/checkpoints/LTX2.3/ltx-2.3-22b-dev-fp8.safetensors \
"https://huggingface.co/Lightricks/LTX-2.3-fp8/resolve/main/ltx-2.3-22b-dev-fp8.safetensors?download=true"

echo "=== Distilled LoRA 1.1 (3GB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/ltx-2.3-22b-distilled-lora-384-1.1.safetensors \
"https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-22b-distilled-lora-384-1.1.safetensors?download=true"

echo "=== Gemma text encoder fp4 mixed (9GB) ==="
wget -O /workspace/ComfyUI/models/text_encoders/LTX2.3/gemma_3_12B_it_fp4_mixed.safetensors \
"https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/text_encoders/gemma_3_12B_it_fp4_mixed.safetensors?download=true"

echo "=== Text projection (2.3GB) ==="
wget -O /workspace/ComfyUI/models/text_encoders/LTX2.3/ltx-2.3_text_projection_bf16.safetensors \
"https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/text_encoders/ltx-2.3_text_projection_bf16.safetensors?download=true"

echo "=== Tiny VAE (обязательный) ==="
wget -O /workspace/ComfyUI/models/vae/LTX2.3/taeltx2_3.safetensors \
"https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/taeltx2_3.safetensors?download=true"

echo "=== Audio VAE (700MB) ==="
wget -O /workspace/ComfyUI/models/vae/LTX2.3/LTX23_audio_vae_bf16.safetensors \
"https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/LTX23_audio_vae_bf16.safetensors?download=true"

echo "=== Video VAE (2.5GB) ==="
wget -O /workspace/ComfyUI/models/vae/LTX2.3/LTX23_video_vae_bf16.safetensors \
"https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/LTX23_video_vae_bf16.safetensors?download=true"

echo "=== Spatial Upscaler x2 v1.1 (1GB) ==="
wget -O /workspace/ComfyUI/models/latent_upscale_models/ltx-2.3-spatial-upscaler-x2-1.1.safetensors \
"https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-spatial-upscaler-x2-1.1.safetensors?download=true"

echo "=== LoRA: NSFW Posing Nude v1.11 (1GB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/LTX23_nsfw_posing_nude_v1_11.safetensors \
"https://huggingface.co/borisf/ltx23-loras/resolve/main/LTX23_nsfw_posing_nude_v1_11.safetensors?download=true"

echo "=== LoRA: Sexy Move i2v (617MB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/LTX2-i2v-SexyMove.safetensors \
"https://huggingface.co/borisf/ltx23-loras/resolve/main/LTX2-i2v-SexyMove.safetensors?download=true"

echo "=== LoRA: Oral Suite i2v (1.23GB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/LTX2-i2v-OralSuite.safetensors \
"https://huggingface.co/borisf/ltx23-loras/resolve/main/LTX2-i2v-OralSuite.safetensors?download=true"

echo "=== LoRA: DemoPose (403MB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/ltx23__demopose_d3m0p0s3.safetensors \
"https://huggingface.co/borisf/ltx23-loras/resolve/main/ltx23__demopose_d3m0p0s3.safetensors?download=true"

echo "=== LoRA: 5Fingering (856MB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/5fingering-ltx-mfng-step00004500.safetensors \
"https://huggingface.co/borisf/ltx23-loras/resolve/main/5fingering-ltx-mfng-step00004500.safetensors?download=true"

echo "=== LoRA: Female Masturbation (19MB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/Female_Masturbation_Solo_Sex_Naked__Nude.safetensors \
"https://huggingface.co/borisf/ltx23-loras/resolve/main/Female_Masturbation_Solo_Sex_Naked__Nude.safetensors?download=true"

echo "=== LoRA: Deep Throat v01 (1.16GB) ==="
wget -O /workspace/ComfyUI/models/loras/LTX2.3/ltxdeepthroat_v01.safetensors \
"https://huggingface.co/borisf/ltx23-loras/resolve/main/ltxdeepthroat_v01.safetensors?download=true"

echo "=== Все модели LTX-2.3 загружены! ==="
