#!/bin/bash
set -ev

# Check if CRAM file already exists
if [ -f "nanotest/alignment.cram" ] && [ -f "nanotest/alignment.cram.crai" ]; then
    echo "CRAM file and index already exist, skipping creation"
    exit 0
fi

# Check if samtools is already installed
if command -v samtools &> /dev/null; then
    echo "samtools is already installed"
else
    echo "Installing samtools..."
    conda install -y samtools
fi

# Create CRAM file and index
echo "Creating CRAM file..."
samtools view -C nanotest/alignment.bam -T nanotest/GCF_000240185.1_ASM24018v2_genomic.fna -o nanotest/alignment.cram
echo "Creating CRAM index..."
samtools index nanotest/alignment.cram

echo "CRAM file creation completed successfully"
