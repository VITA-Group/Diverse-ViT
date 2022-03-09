python -m torch.distributed.launch \
    --nproc_per_node=8 \
    --use_env main.py \
    --model deit_small_layer24_patch16_224_diverse \
    --batch-size 128 \
    --data-path $1 \
    --output_dir experiment/deit_small_24layers_diverse \
    --dist_url 'tcp://127.0.0.1:33251' \
    --num_workers 32 \
    --mixing_coef 1 \
    --emb_cos_within_coef 0.5 \
    --emb_contrast_cross_coef 0.5 \
    --attn_cos_within_coef 1e-4 \
    --weight_mha_cond_orth_coef 5e-4