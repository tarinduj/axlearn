#!/bin/bash

# Define the directories to clean
JAX_DUMP_PATH=${PWD}/jax_dump
NEURON_DUMP_PATH=${PWD}/compiler_dump
HLO_DUMP_PATH=${PWD}/hlo_dump
OUTPUT_DIR="/home/ubuntu/tarindu/bf16-axlearn/out"

# Function to clean directories
clean_dir() {
    if [ -d "$1" ]; then
        rm -rf "$1"
        echo "$1 cleaned successfully."
    else
        echo "Directory $1 does not exist, skipping..."
    fi
}

# Clean each directory
clean_dir "$JAX_DUMP_PATH"
clean_dir "$NEURON_DUMP_PATH"
clean_dir "$HLO_DUMP_PATH"
clean_dir "$OUTPUT_DIR"

echo "All specified directories have been cleaned."
