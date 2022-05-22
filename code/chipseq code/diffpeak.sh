#shWDR5 vs shLuc
manorm --p1 ../peak/shWDR5_peaks.xls --p2 ../peak/shluc_peaks.xls --r1 ../align/SRR7026139.bed --r2 ../align/SRR7026138.bed -w 500 -o ./shWDR5_diff
#H3K4 vs shLuc
manorm --p1 ../peak/shLuc_H3K4_peaks.xls --p2 ../peak/shWDR5_H3K4_peaks.xls --r1 ../align/SRR7026140.bed --r2 ../align/SRR7026142.bed -w 1000 -o ./H3K4_diff