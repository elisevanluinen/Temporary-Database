#!/bin/bash
#Construct rep-genome component of MIDASDB, annotate all genomes
#and build the files needed for the rep-genome database.
 
midas2 annotate_genome --species all \
  --midasdb_name newdb --midasdb_dir midasdb_custom \
  --debug --force

midas2 build_midasdb --generate_gene_feature \
  --genomes all \
  --midasdb_name newdb --midasdb_dir midasdb_custom \
  --debug --force
