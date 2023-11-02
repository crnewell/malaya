WANDB_PROJECT=fpf-mistral-7b-hf-instructions-16k ~/.local/bin/deepspeed run_clm_instructions.py \
--deepspeed ds_config_zero3.json \
--model_name_or_path mesolitica/mistral-7b-32768-fpf \
--per_device_train_batch_size 12 \
--gradient_accumulation_steps 1 \
--output_dir fpf-7b-instructions-16k \
--bf16 \
--do_train \
--do_eval false \
--num_train_epochs 1 \
--train_file "shuf-combine-alternate-no-alignment-malay-multitasks.jsonl" \
--logging_steps 1 \
--learning_rate 2e-5 \
--block_size 16384 \
--save_steps 200 \
--save_total_limit 2 \
--gradient_checkpointing true