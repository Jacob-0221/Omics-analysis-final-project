#align
ls ../clean/*.fastq|while read id
do
name=$(basename $id .fastq)
STAR --runThreadN 8 --genomeDir /mnt/g/linux/reference_genome/STARref --outFileNamePrefix $name --readFilesIn $id --outSAMtype BAM SortedByCoordinate
done
#counts
featureCounts -T 8 -t exon -g gene_id -a /mnt/g/linux/reference_genome/GRCh38/Homo_sapiens.GRCh38.106.gtf -o all_feature.txt *.bam