#!/bin/bash

QWEN_CHECKPOINT=./ckpt/qwen2.5-1.5B.pth

python3 -m executorch.examples.models.llama.export_llama \
  --model "qwen2_5" \
  --checkpoint "${QWEN_CHECKPOINT:?}" \
  --params executorch/examples/models/qwen2_5/1_5b_config.json \
  -kv \
  --use_sdpa_with_kv_cache \
  -d fp32 \
  -X \
  --metadata '{"get_bos_id":151643, "get_eos_ids":[151643]}' \
  --output_name="qwen2_5-1_5b.pte" \
  --verbose