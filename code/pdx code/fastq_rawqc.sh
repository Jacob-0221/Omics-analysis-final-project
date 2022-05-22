mkdir fastq
## sra to fastq
ls ./sra/*.sra|while read id
do
name=$(basename $id .sra)
fasterq-dump --split-3 $id -o ./fastq/$name.fastq
done

##gzip
ls ./fastq/.fastq|while read id
do
name=$(basename $id .fastq)
gzip $id>$name.fastq.gz
done

## raw qc
mkdir rawqc
ls ./fastq/*.gz|xargs fastqc -t 10 -o ./rawqc
