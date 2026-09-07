# Checkpoint 04 - Residue Position Indexing

prot_sequence <- "MATKYKMRNSGQFWTYVKNCSTYCWPFIEQ"

prot_seq_splitted <- strsplit(prot_sequence, "")[[1]]

serine_positions <- which(prot_seq_splitted == "S")
threonine_positions <- which(prot_seq_splitted == "T")
tyrosines_positions <- which(prot_seq_splitted == "Y")


phosphorylatable_residues <- c("S", "T", "Y")
  
logical_check <- c(prot_seq_splitted[serine_positions],prot_seq_splitted[threonine_positions], prot_seq_splitted[tyrosines_positions]) %in% phosphorylatable_residues
print(logical_check)

total_phosphorylatable <- sum(c(length(serine_positions), length(threonine_positions), length(tyrosines_positions)))

cat("Total phosphorylatable residues:", total_phosphorylatable,"\n")
cat("Serine found at:", serine_positions,"\n")
cat("Threonine found at:", threonine_positions,"\n")
cat("Tyrosine found at:", tyrosines_positions,"\n")