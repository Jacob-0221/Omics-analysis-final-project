## bowtie2 align
mkdir align
ls ./clean/*.fastq|while read id
do
name=$(basename $id .fastq)
bowtie2 -p 8 --very-sensitive -x /mnt/g/linux/reference_genome/bowtie2ref/GRCh38_chromosome/GRCh38 -U $id | samtools sort -O bam -@ 10 -o - >./align/$name.bam
done