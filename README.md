# Protein R Foundations

<div data-importer="image" align="left">
  <img data-importer="image" height="350" src="https://i.postimg.cc/vZR3wnHz/f3ad92ff-2bc0-4464-b1e0-003da9bbe9cb.png"  />
</div>

Practice repository for R fundamentals, worked through small biology-flavored
problems instead of the course's own generic examples.

## What this is

Checkpoint-by-checkpoint practice completed alongside HarvardX's *Data
Science: R Basics* (PH125.1x), paired with Rafael Irizarry's freely available
*Introduction to Data Science* as the reference text the course is built
from. Each checkpoint takes that section's R concept and applies it to a
small, real biological problem rather than the book's own worked example.

## What this isn't

Not a research project, and not written to look like one. There's no
research question here — this is scoped, deliberate practice for building R
fluency before it's needed for real proteomics and genomics work later in
the roadmap. For the actual research portfolio:

- [`egfr-integrative-proteogenomics`](#) — the flagship project this
  foundation feeds into
- [`protein-python-foundations`](https://github.com/Afraim10/protein-python-foundations) — the Python equivalent of this repo,
  from the same stage of the same plan

## Structure

| Checkpoint | Concept | Problem |
|---|---|---|
| 01 | Objects, functions, scripts | Primer melting temperature (Wallace rule) |
| 02 | Data types, data frames | Amino acid property table (Kyte-Doolittle hydrophobicity) |
| 03 | Vectors, sorting, vector arithmetic | GC content ranking across multiple sequences |
| 04 | Indexing, logicals, `%in%` | Residue position lookup in a toy protein sequence |
| 05 | Base R plotting | Bar plot of an amino acid property |
| 06 | Programming basics — conditionals, functions, loops, vectorization | Codon-to-amino-acid translator |
| final | ggplot2 (short detour beyond the course itself) | Amino Acid Properties Dashboard — Project 0-B in the master plan |

Full problem statements for each checkpoint are in `CHECKPOINTS.md`.

## Environment

Base R only through Checkpoint 06 — no external packages, matching what the
course itself covers. The final project additionally uses `ggplot2`. R
version is noted at the top of each script rather than pinned in a separate
environment file; a repo this size doesn't need the reproducibility
infrastructure the EGFR repo does.

## How this was done

Each checkpoint is attempted independently against the course material
first. Some were reviewed afterward, mistakes were identified, and corrected
versions replaced the originals — noted in the relevant commit message
rather than left implicit. No checkpoint was solved by asking for a finished
script upfront.

## Status

In progress. Checkpoints are added as the course is completed, section by
section.

- [x] Checkpoint 01 — Primer melting temperature (Wallace rule)
- [x] Checkpoint 02 — Amino acid property table (Kyte-Doolittle hydrophobicity)
- [x] Checkpoint 03 — GC content ranking across multiple sequences
- [ ] Checkpoint 04 — Residue position lookup in a toy protein sequence (in-progress)
- [ ] Checkpoint 05 — Bar plot of an amino acid property 
- [ ] Checkpoint 06 — Codon-to-amino-acid translator
- [ ] Final Project — Amino Acid Properties Dashboard

