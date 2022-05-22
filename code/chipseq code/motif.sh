ls ./*.bed|while read id
do
name=$(basename $id .bed)
findMotifsGenome.pl $id hg38 ./$name -size 200 -p 8 -len 8,10,12,14
done