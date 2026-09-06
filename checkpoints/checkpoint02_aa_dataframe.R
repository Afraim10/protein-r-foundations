amino_acids = c("Tryptophan", "Tyrosine", "Valine", "Proline", "Methionine","Lysine")
one_letter_code = c("W", "Y", "V", "P", "M", "K")
hydrophobicity = c(-0.9, -1.3, 	4.2, 	-1.6,1.9, -3.9)

amino_letters_hydro = data.frame( amino_acids, one_letter_code, hydrophobicity)

class(amino_letters_hydro)
str(amino_letters_hydro)
tryptophan = amino_letters_hydro$amino_acids[1]
tryptophan_letter = amino_letters_hydro$one_letter_code[1]
tryptophan_hydrophobicity = amino_letters_hydro$hydrophobicity[1]

cat(" Amino Acid:", tryptophan,"\n", "Letter Code:", tryptophan_letter,"\n", "Hydrophobic Charachter:", tryptophan_hydrophobicity,"\n")
print(amino_letters_hydro)

mean(amino_letters_hydro$hydrophobicity)