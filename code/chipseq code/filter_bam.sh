mkdir filter_bam
## remove unmapped reads
ls ./align/*.bam|while read id
do
name=$(basename $id .bam)
samtools view -@ 8 -bF 4 $id -o ./filter_bam/$name.bam
done

## statistic of bam file
ls ./filter_bam/*.bam|while read id
do
name=$(basename $id .bam)
samtools index $id
samtools idxstats $id >$name.stats
done


## remove duplicates
#ls ./filter_bam/*.bam|while read id
#do
#name=$(basename $id .bam)
#samtools view -h -b -F 1024 $id >./filter_bam/$name.filter.bam
#done