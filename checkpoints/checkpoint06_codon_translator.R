# Checkpoint 06 - Codon Translator (base R only)
# library(stringr) possible helper package

codon_aa <- c("TTT" = "F", "TTC" = "F",
                 "TTA"="L","TTG"="L",
                 "TCT"="S","TCC"="S","TCA"="S","TCG"="S",
                 "TAT" = "Y","TAC"= "Y",
                 "TGT"="C","TGC"="C",
                 "TGG"="W", 
                 "ATG"="M",
                 "TAA"="Stop", "TAG"="Stop", "TGA"="Stop",
                 "CTT"="L","CTC"="L","CTA"="L","CTG"="L",
                 "CCC"="P","CCA"="P","CCG"="P","CCT"="P",
                 "CAT"="H","CAC"="H",
                 "CAA"="Q","CAG"="Q",
                 "CGT"="R","CGC"="R","CGA"="R","CGG"="R",
                 "ATC"="I","ATA"="I","ATT"="I")

translate_codon <- function(codon){
  aa <- unname(codon_aa[codon])
  if (any(is.na(aa))) {
    stop(paste("Unrecognized codon in table:", codon[is.na(aa)][1]))
  }
 aa
}

# Base R equivalent of stringr's str_extract_all(x, ".{3}"): chunk a
# string into non-overlapping windows of width 3.
split_codon <- function(x){
  n <- nchar(x)
  substring(x, seq(1, n - 2, by = 3), seq(3, n, by = 3))
}

# Without using a for loop
translate_dna <- function(x){
  if(is.numeric(x) == TRUE){
    stop("DNA sequence must only contain characters.")
  }
  dna_length <- nchar(x)
  if(dna_length %% 3 != 0){stop("DNA sequence length must be a multiple of 3.")}
  aa <- split_codon(x)
  translated_prot <- vector(length = length(aa))
  translated_prot <- translate_codon(aa)
  return(paste(translated_prot, collapse =  ""))
}

# Using a for loop
translate_dna2 <- function(x){
  if(is.numeric(x) == TRUE){
    stop("DNA sequence must only contain characters.")
  }
  dna_length <- nchar(x)
  if(dna_length %% 3 != 0){stop("DNA sequence length must be a multiple of 3.")}
  codons <- split_codon(x)
  translated_prot <- vector(length = length(codons))
  for(i in seq_along(1:length(codons))){
    translated_prot[i] <- translate_codon(codons[i])
  }
  
  return(paste(translated_prot, collapse =  ""))
}

# Using a for loop
translate_dna3 <- function(x){
  if(is.numeric(x) == TRUE){
    stop("DNA sequence must only contain characters.")
  }
  dna_length <- nchar(x)
  if(dna_length %% 3 != 0){stop("DNA sequence length must be a multiple of 3.")}
  codons <- split_codon(x)
  translated_prot <- sapply(codons, translate_codon)
  paste(translated_prot, collapse = "")
}


output1 <- translate_dna("ATCATACGTCGCCAA")
output2 <- translate_dna2("ATCATACGTCGCCAA")
output3 <- translate_dna3("ATCATACGTCGCCAA")

cat("translate_dna  (no loop):",output1, "\n")
cat("translate_dna2 (for loop):",output2, "\n")
cat("translate_dna3 (sapply):",output3, "\n")

# Validating results of the different functions
stopifnot(identical(output1, output2), identical(output2, output3))
cat("All three implementations agree.\n")

# Another valid validation method
# identical(output1, output2) && identical(output2, output3) && identical(output1, output3)
