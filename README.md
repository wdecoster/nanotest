# nanotest
Small test datasets for testing nanopack scripts and modules

This repo contains:
- 371 reads from [ultra long e.coli reads from Josh Quick](http://lab.loman.net/2017/03/09/ultrareads-for-nanopore/)
- an alignment in bam format of 1000 reads from [SRR5665597](http://mgen.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000132) to the reference genome (using minimap2)
- an alignment in cram format of 1000 reads from [SRR5665597](http://mgen.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000132) to the reference genome (using minimap2)
- an albacore summary file of 371 the reads from the fastq file
- a pickle file of a pandas DataFrame created after feature extraction using [nanoget](https://github.com/wdecoster/nanoget) from the summary file
- a pickle file of a pandas DataFrame created after feature extraction using [nanoget](https://github.com/wdecoster/nanoget) from the bam file
