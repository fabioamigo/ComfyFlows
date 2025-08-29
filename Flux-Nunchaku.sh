
#!/bin/bash


curl -Lf -C - https://huggingface.co/nunchaku-tech/nunchaku-flux.1-krea-dev/resolve/main/svdq-int4_r32-flux.1-krea-dev.safetensors -o ComfyUI/models/diffusion_models/svdq-int4_r32-flux.1-krea-dev.safetensors &

curl -Lf -C - https://huggingface.co/nunchaku-tech/nunchaku-flux.1-dev/resolve/main/svdq-int4_r32-flux.1-dev.safetensors -o ComfyUI/models/diffusion_models/svdq-int4_r32-flux.1-dev.safetensors &

curl -Lf -C - https://huggingface.co/nunchaku-tech/nunchaku-flux.1-kontext-dev/resolve/main/svdq-int4_r32-flux.1-kontext-dev.safetensors -o ComfyUI/models/diffusion_models/svdq-int4_r32-flux.1-kontext-dev.safetensors &

curl -Lf -C - https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors -o ComfyUI/models/text_encoders/clip_l.safetensors &

curl -Lf -C - https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors -o ComfyUI/models/text_encoders/t5xxl_fp16.safetensors &

curl -Lf -C - https://huggingface.co/Comfy-Org/HiDream-I1_ComfyUI/resolve/main/split_files/vae/ae.safetensors -o ComfyUI/models/vae/ae.safetensors &

curl -Lf -C - https://huggingface.co/camenduru/FLUX.1-dev/resolve/fc63f3204a12362f98c04bc4c981a06eb9123eee/FLUX.1-Turbo-Alpha.safetensors -o ComfyUI/models/loras/flux1-turbo.safetensors.safetensors &

curl -Lf -C - https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/UniversalUpscaler/4x_UniversalUpscalerV2-Sharper_103000_G.pth -o ComfyUI/models/upscale_models/4x_UniversalUpscalerV2-Sharper_103000_G.pth &

curl -Lf -C - https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/1x-ITF-SkinDiffDetail-Lite-v1.pth -o ComfyUI/models/upscale_models/1x-ITF-SkinDiffDetail-Lite-v1.pth &

curl -Lf -C - https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/4x-UltraSharp.pth -o ComfyUI/models/upscale_models/4x-UltraSharp.pth &

# Espera todos terminarem
wait

echo "✅ [FLUX] Todos os downloads finalizaram com sucesso."