# Checkpoint 02 - Amino Acid Property Table
amino_acid <- c("Tryptophan", "Tyrosine", "Valine", "Proline", "Methionine", "Lysine")
one_letter_code <- c("W", "Y", "V", "P", "M", "K")
hydrophobicity <- c(-0.9, -1.3, 4.2, -1.6, 1.9, -3.9)  # Kyte-Doolittle scale

aa_table <- data.frame(amino_acid, one_letter_code, hydrophobicity)

print(class(aa_table))
str(aa_table)

hydrophobicity_col <- aa_table$hydrophobicity
print(class(hydrophobicity_col))

tryptophan_name <- aa_table$amino_acid[1]
tryptophan_letter <- aa_table$one_letter_code[1]
tryptophan_hydrophobicity <- aa_table$hydrophobicity[1]

cat("Amino Acid:", tryptophan_name, "\n")
cat("Letter Code:", tryptophan_letter, "\n")
cat("Hydrophobicity:", tryptophan_hydrophobicity, "\n")

print(aa_table)

print(mean(aa_table$hydrophobicity))
