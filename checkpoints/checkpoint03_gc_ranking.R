# Checkpoint 03 - GC Content Ranking Across Sequences

# library(stringr) is another potential solution package BUT
# I will follow base R only, per this checkpoint's spec and the repo's README.

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

# Using str_count() function that comes with stringr instead of sum(seq1 == "G" | seq1 == "C")
# Will end up giving similar results
gc1 <- ((sum(seq1 == "G" | seq1 == "C") / length(seq1)) * 100)
gc2 <- ((sum(seq2 == "G" | seq2 == "C") / length(seq2)) * 100)
gc3 <- ((sum(seq3 == "G" | seq3 == "C") / length(seq3)) * 100)
gc4 <- ((sum(seq4 == "G" | seq4 == "C") / length(seq4)) * 100)
gc5 <- ((sum(seq5 == "G" | seq5 == "C") / length(seq5)) * 100)

# Rounding the decimals to the hundredths
gc_percent <- c(
  sequence1_gc = round(gc1, digits = 2),
  sequence2_gc = round(gc2, digits = 2),
  sequence3_gc = round(gc3, digits = 2),
  sequence4_gc = round(gc4, digits = 2),
  sequence5_gc = round(gc5, digits = 2))

print(gc_percen[order(gc_percen, decreasing=TRUE)]) # descending order highest to lowest GC%

print(sort(gc_percen)) # ascending order lowest to highest, for the opposite view
