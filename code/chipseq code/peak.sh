# shLuc peak calling
macs2 callpeak -t ./filter_bam/SRR7026138.filter.bam -c ./filter_bam/SRR7026137.filter.bam -f BAM -g hs -B --nomodel -p 0.001 --extsize 200 -n shluc
# shWDR5 peak calling
macs2 callpeak -t ./filter_bam/SRR7026139.filter.bam -c ./filter_bam/SRR7026137.filter.bam -f BAM -g hs -B --nomodel -p 0.001 --extsize 200 -n shWDR5
# shLuc_H3K4 peak calling
macs2 callpeak -t ./filter_bam/SRR7026140.filter.bam -c ./filter_bam/SRR7026137.filter.bam -f BAM -g hs -B --nomodel -p 0.001 --extsize 200 -n shLuc_H3K4
# shWDR5_H3K4 peak calling
macs2 callpeak -t ./filter_bam/SRR7026142.filter.bam -c ./filter_bam/SRR7026137.filter.bam -f BAM -g hs -B --nomodel -p 0.001 --extsize 200 -n shWDR5_H3K4
