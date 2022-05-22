mkdir clean
ls ./fastq/*.fastq |while read id
do
name=$(basename $id .gz)
trimmomatic SE -phred33 -threads 10 $id ./clean/$name.gz HEADCROP:15
done
