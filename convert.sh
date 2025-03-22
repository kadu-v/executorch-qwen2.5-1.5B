#!/bin/bash

python3 executorch/examples/models/qwen2_5/convert_weights.py \
    /Users/kikemori/.cache/huggingface/hub/models--Qwen--Qwen2.5-1.5B/snapshots/8faed761d45a263340a0528343f099c05c9a4323 \
    ./ckpt/qwen2.5-1.5B.pth