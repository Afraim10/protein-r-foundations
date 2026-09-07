# Checkpoint 04 - Residue Position Indexing

prot_sequence <- "MATKYKMRNSGQFWTYVKNCSTYCWPFIEQ"

prot_seq_splitted <- strsplit(prot_sequence, "")[[1]]

serine_positions <- which(prot_seq_splitted == "S")
threonine_positions <- which(prot_seq_splitted == "T")
tyrosines_positions <- which(prot_seq_splitted == "Y")


phosphorylatable_residues <- c("S", "T", "Y")
  
phosphorylatable_residues %in% c(prot_seq_splitted[serine_positions],prot_seq_splitted[threonine_positions], prot_seq_splitted[tyrosines_positions])

total_phosphorylatable <- sum(c(length(serine_positions), length(threonine_positions), length(tyrosines_pos)))

cat("Total phosphorylatable residues:", total_phosphorylatable)
cat("Serine found at:", serine_positions)
cat("Threonine found at:", threonine_positions)
cat("Tyrosine found at:", tyrosines_positions)