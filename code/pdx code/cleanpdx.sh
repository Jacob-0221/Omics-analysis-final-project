for i in {03..32}
do
ngs_disambiguate -s SRR70262${i} -o ./cleanbam -a hisat2 ./hgalign/SRR70262${i}.bam ./mmalign/SRR70262${i}.bam
done
