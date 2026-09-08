# Checkpoint 05 - Base R Property Plot

amino_acid <- c("Tryptophan", "Tyrosine", "Valine", "Proline", "Methionine", "Lysine")
one_letter_code <- c("W", "Y", "V", "P", "M", "K")
hydrophobicity <- c(-0.9, -1.3, 4.2, -1.6, 1.9, -3.9)  # Kyte-Doolittle scale

aa_table <- data.frame(amino_acid, one_letter_code, hydrophobicity)


png("hydrophobicity_to_aa.png", width = 1200, height = 600, res = 200, bg = "white", type = "cairo-png")
barplot(hydrophobicity, names.arg = one_letter_code,
        col = "skyblue", border = "black",
        main = "Amino Acids Hydrophobic Character Chart",
        xlab = "One Letter Code", ylab = "Kyte-Doolittle Scale")
dev.off()

# Few issues encountered like different working directory, as well as some WSL issues.