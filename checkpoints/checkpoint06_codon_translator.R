library(stringr)

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

translate_codon <- function(x){
 return(codon_aa[x])
}

# Without using a for loop
translate_dna <- function(x){
  translated_prot <- vector(length = length(aa))
  if(is.numeric(x) == TRUE){
    print("DNA sequence must only contain characters.")
  }
  dna_length <- str_count(x)
  if(dna_length %% 3 != 0){stop("DNA sequence length must be a multiple of 3.")}
  aa <- str_extract_all(x,".{3}")[[1]]
  translated_prot <- translate_codon(aa)
  return(paste(translated_prot, collapse =  ""))
}

# Using a for loop
translate_dna2 <- function(x){
  if(is.numeric(x) == TRUE){
    print("DNA sequence must only contain characters.")
  }
  dna_length <- str_count(x)
  if(dna_length %% 3 != 0){stop("DNA sequence length must be a multiple of 3.")}
  codons <- str_extract_all(x,".{3}")[[1]]
  translated_prot <- vector(length = length(codons))
  for(i in seq_along(1:length(codons))){
    translated_prot[i] <- translate_codon(codons[i])
  }
  
  return(paste(translated_prot, collapse =  ""))
}

# Using a for loop
translate_dna3 <- function(x){
  if(is.numeric(x) == TRUE){
    print("DNA sequence must only contain characters.")
  }
  dna_length <- str_count(x)
  if(dna_length %% 3 != 0){stop("DNA sequence length must be a multiple of 3.")}
  codons <- str_extract_all(x,".{3}")[[1]]
  translated_prot <- sapply(codons, translate_codon)
  paste(translated_prot, collapse = "")
}

output1 <- translate_dna("ATCATACGTCGCCAA")

output2 <- translate_dna2("ATCATACGTCGCCAA")

output3 <- translate_dna3("ATCATACGTCGCCAA")

identical(output1, output2) && identical(output2, output3)
