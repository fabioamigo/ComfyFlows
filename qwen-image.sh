#!/bin/bash



curl -Lf -C - https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_edit_fp8_e4m3fn.safetensors -o /workspace/ComfyUI/models/diffusion_models/qwen_image_edit_fp8_e4m3fn.safetensors &

curl -Lf -C - https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Lightning-4steps-V1.0.safetensors -o /workspace/ComfyUI/models/loras/Qwen-Image-Lightning-4steps-V1.0.safetensors &

curl -Lf -C - https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Lightning-8steps-V1.1.safetensors -o /workspace/ComfyUI/models/loras/Qwen-Image-Lightning-8steps-V1.1.safetensors &

curl -Lf -C - https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Edit-Lightning-8steps-V1.0.safetensors -o /workspace/ComfyUI/models/loras/Qwen-Image-Edit-Lightning-8steps-V1.0.safetensors &

# curl -Lf -C - https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors -o /workspace/ComfyUI/models/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors &

curl -Lf -C - https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b.safetensors -o /workspace/ComfyUI/models/text_encoders/qwen_2.5_vl_7b.safetensors &

curl -Lf -C - https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/vae/qwen_image_vae.safetensors -o /workspace/ComfyUI/models/vae/qwen_image_vae.safetensors &

curl -Lf -C - https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_fp8_e4m3fn.safetensors -o /workspace/ComfyUI/models/diffusion_models/qwen_image_fp8_e4m3fn.safetensors &

curl -Lf -C - https://huggingface.co/flymy-ai/qwen-image-realism-lora/resolve/main/flymy_realism.safetensors -o /workspace/ComfyUI/models/loras/flymy_realism.safetensors &

curl -Lf -C - https://huggingface.co/starsfriday/Qwen-Image-Edit-Remove-Clothes/resolve/main/qwen-edit-remove-clothes.safetensors -o /workspace/ComfyUI/models/loras/qwen-edit-remove-clothes.safetensors &

# Espera todos terminarem
wait

echo "✅ [QWEN] Todos os downloads finalizaram com sucesso."

