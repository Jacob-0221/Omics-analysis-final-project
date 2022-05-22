ls ./align/*.bam|while read id
do
name=$(basename $id .bam)
bamCoverage --bam $id -o $name.bw --normalizeUsing RPKM --effectiveGenomeSize 2913022398 -p 10
done