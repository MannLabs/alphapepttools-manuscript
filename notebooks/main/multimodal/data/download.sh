#!/bin/bash 

#!/bin/bash 
# Run in the current directory with bash download.sh 
# Requires pridepy (pip install pridepy)


# Lehtiö J, Arslan T, Siavelis I, Pan Y, Socciarelli F, Berkovska O, Umer HM, Mermelekas G, Pirmoradian M, Jönsson M, Brunnström H, Brustugun OT, Purohit KP, Cunningham R, Asl HF, Isaksson S, Arbajian E, Aine M, Karlsson A, Kotevska M, Hansen CG, Haakensen VD, Helland Å, Tamborero D, Johansson HJ, Branca RM, Planck M, Staaf J, Orre LM. Proteogenomics of non-small cell lung cancer reveals molecular subtypes associated with specific therapeutic targets and immune evasion mechanisms. Nat Cancer. 2021 2(11):1224-1242
#  DOI: 10.1038/s43018-021-00259-9 ; PubMed: 34870237

mkdir -p ./{raw/dda-1,pp,results,models}

pridepy download-file-by-name \
    -a PXD020191 \
    -f gene-symbols_table.txt \
    -p ftp \
    -o ./raw/dda-1 

# Supplementary data
wget -O ./raw/lethioe2021_SI1.xlsx "https://static-content.springer.com/esm/art%3A10.1038%2Fs43018-021-00259-9/MediaObjects/43018_2021_259_MOESM3_ESM.xlsx"


# Metadata (parsed from lethioe2021_SI1.xlsx)
wget -O ./raw/metadata.tsv "https://datashare.biochem.mpg.de/s/x5gMNoZnagZAonT/download"
