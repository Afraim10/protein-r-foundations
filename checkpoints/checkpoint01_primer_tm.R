# Checkpoint 01 - Primer Melting Temperature Calculator
# Primer: M13 Forward (-20) sequencing primer - a real, commonly used oligo,
# not a fabricated sequence.
sequence <- "GTAAAACGACGGCCAGT"  # 17 nt; counts below were counted by hand from this string

a <- 6
t <- 2
c_count <- 4   # avoiding using`c` - c() is base R's combine function
g_count <- 5   # kept for naming symmetry with c_count

n <- a + t + c_count + g_count

tm_wallace <- 2 * (a + t) + 4 * (c_count + g_count) 
gc_percent <- ((c_count + g_count) / n) * 100

cat("Primer:", sequence, "\n")
cat("Length:", n, "nt\n")
cat("Tm (Wallace rule):", tm_wallace, "degrees C\n")
cat("GC content:", round(gc_percent, 1), "%\n")

# The Wallace rule's valid length range is not settled across sources - some
# restrict it to oligos under ~14 nt, others describe it as developed
# specifically for 14-20 nt, and most agree accuracy drops past ~20 nt.
# This primer is 17 nt: inside the range some sources call acceptable,
# outside the range others use. I am treating this Tm as a rule-of-thumb estimate,
# not a number to design a real PCR reaction around.
