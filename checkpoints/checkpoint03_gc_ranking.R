# Checkpoint 03 - GC Content Ranking Across Sequences

library(stringr) # package installed

sequence1 <- "ATCCGGACCATAGCGCATAGACACGTACGT"
sequence2 <- "GACGCTACGCTACGCTCGACTACGACTACG"
sequence3 <- "CATCAGCATCGACTACACGACTACAGACAC"
sequence4 <- "TGTACGATCGATAGCTGACGATCGAAAACA"
sequence5 <- "TCATCAGAGTCGCTCGATCAGTGCGCGCTC"

seq1 <- strsplit(sequence1, split = "")[[1]] 
seq2 <- strsplit(sequence2, split = "")[[1]]
seq3 <- strsplit(sequence3, split = "")[[1]]
seq4 <- strsplit(sequence4, split = "")[[1]]
seq5 <- strsplit(sequence5, split = "")[[1]]

# Used str_count() function that comes with stringr instead of sum(seq1 == "G" | seq1 == "C")
# Which both will end up giving both results
gc1 <- (((str_count(sequence1, "G") + str_count(sequence1, "C")) / length(seq1)) * 100)
gc2 <- (((str_count(sequence2, "G") + str_count(sequence2, "C")) / length(seq2)) * 100)
gc3 <- (((str_count(sequence3, "G") + str_count(sequence3, "C")) / length(seq3)) * 100)
gc4 <- (((str_count(sequence4, "G") + str_count(sequence4, "C")) / length(seq4)) * 100)
gc5 <- (((str_count(sequence5, "G") + str_count(sequence5, "C")) / length(seq5)) * 100)

# Rounding the decimals to the hundredths
gc_percen <- c(sequence1_gc = round(gc1, digits = 2) ,sequence2_gc =  round(gc2, digits = 2), sequence3_gc =  round(gc3, digits = 2), sequence4_gc =  round(gc4, digits = 2), sequence5_gc =  round(gc5, digits = 2))

index <- order(gc_percen, decreasing=TRUE)
print(gc_percen[index]) # descending order

print(sort(gc_percen)) # ascending order
