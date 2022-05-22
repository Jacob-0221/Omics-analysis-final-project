cat SRR_Acc_List.txt|while read id
do
prefetch $id
done
