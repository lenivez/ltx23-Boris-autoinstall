# ltx23-Boris-autoinstall

Автоматическая установка моделей LTX-2.3 для ComfyUI на RunPod.

## Как запустить

```bash
cd /workspace
git clone https://github.com/lenivez/ltx23-Boris-autoinstall
cd ltx23-Boris-autoinstall
chmod +x install_ltx23_models.sh startup.sh
bash startup.sh
```

## Модели (~45GB)

| Модель | Размер | Папка |
|--------|--------|-------|
| ltx-2.3-22b-dev-fp8.safetensors | 28 GB | checkpoints/LTX2.3 |
| ltx-2.3-22b-distilled-lora-384-1.1.safetensors | 3 GB | loras/LTX2.3 |
| gemma_3_12B_it_fp4_mixed.safetensors | 9 GB | text_encoders/LTX2.3 |
| ltx-2.3_text_projection_bf16.safetensors | 2.3 GB | text_encoders/LTX2.3 |
| taeltx2_3.safetensors | ~100 MB | vae/LTX2.3 |
| LTX23_audio_vae_bf16.safetensors | 700 MB | vae/LTX2.3 |
| LTX23_video_vae_bf16.safetensors | 2.5 GB | vae/LTX2.3 |
| ltx-2.3-spatial-upscaler-x2-1.1.safetensors | 1 GB | latent_upscale_models |

## Источники
- https://huggingface.co/Lightricks/LTX-2.3
- https://huggingface.co/Kijai/LTX2.3_comfy
- https://huggingface.co/Comfy-Org/ltx-2
