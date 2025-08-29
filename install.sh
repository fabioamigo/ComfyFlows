#!/bin/bash


apt update
apt upgrade -y
apt install aria2 --yes

curl -LsSf https://astral.sh/uv/install.sh | sh
 
export PATH=$PATH:$HOME/.local/bin

uv venv -p 3.12
source .venv/bin/activate

uv pip install --link-mode=copy pip

git clone https://github.com/comfyanonymous/ComfyUI.git
git -C ComfyUI/ pull
uv pip install --link-mode=copy -U -r ComfyUI/requirements.txt

git clone https://github.com/Comfy-Org/ComfyUI-Manager.git ComfyUI/custom_nodes/ComfyUI-Manager
git -C ComfyUI/custom_nodes/ComfyUI-Manager/ pull
uv pip install --link-mode=copy -U -r ComfyUI/custom_nodes/ComfyUI-Manager/requirements.txt

git clone https://github.com/mit-han-lab/ComfyUI-nunchaku ComfyUI/custom_nodes/nunchaku_nodes
git -C ComfyUI/custom_nodes/nunchaku_nodes/ pull
uv pip install --link-mode=copy -U -r ComfyUI/custom_nodes/nunchaku_nodes/requirements.txt

git clone https://github.com/TheBill2001/comfyui-upscale-by-model.git ComfyUI/custom_nodes/upscale_by_model
git -C ComfyUI/custom_nodes/upscale_by_model/ pull

git clone https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git ComfyUI/custom_nodes/UltimateSDUpscale
git -C ComfyUI/custom_nodes/UltimateSDUpscale/ pull

git clone https://github.com/kijai/ComfyUI-KJNodes.git  ComfyUI/custom_nodes/KJNodes
git -C ComfyUI/custom_nodes/KJNodes/ pull
uv pip install --link-mode=copy -U -r ComfyUI/custom_nodes/KJNodes/requirements.txt

git clone https://github.com/rgthree/rgthree-comfy.git ./ComfyUI/custom_nodes/rgthree
git -C ComfyUI/custom_nodes/rgthree/ pull
uv pip install --link-mode=copy -U -r ComfyUI/custom_nodes/rgthree/requirements.txt

git clone https://github.com/numz/ComfyUI-SeedVR2_VideoUpscaler.git ./ComfyUI/custom_nodes/SeedVR2
git -C ComfyUI/custom_nodes/SeedVR2
uv pip install --link-mode=copy -U -r ComfyUI/custom_nodes/SeedVR2/requirements.txt

git clone https://github.com/moonwhaler/comfyui-seedvr2-tilingupscaler  ComfyUI/custom_nodes/SeedVR2-Tiled
git -C ComfyUI/custom_nodes/SeedVR2 -C ComfyUI/custom_nodes/SeedVR2-Tiled
uv pip install --link-mode=copy -U -r ComfyUI/custom_nodes/SeedVR2-Tiled/requirements.txt