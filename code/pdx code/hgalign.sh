ls ../clean/*.gz|while read id
do
name=$(basename $id .fastq.gz)
hisat2 -p 8 -x /mnt/g/linux/reference_genome/hisat_hg/GRCh38 -U $id | samtools view -@ 8 -b|samtools sort -@ 8 >./$name.bam
done
