set -ev

conda install -y samtools
samtools view -C nanotest/alignment.bam -T nanotest/GCF_000240185.1_ASM24018v2_genomic.fna -o nanotest/alignment.cram
samtools index nanotest/alignment.cram
