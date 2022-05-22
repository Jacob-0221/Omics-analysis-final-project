## sra to fastq
ls ./sra/*.sra|while read id
do
fasterq-dump --split-3 $id -O ./fastq
done

## raw qc
ls ./fastq/*.fastq|xargs fastqc -t 10 -o ./rawqc
