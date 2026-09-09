# README

Reanalysis of Lehtioe et al 2021.

## Notebooks

### Setup environment 

Setup an environemnt with `alphapepttools-manuscript/requirements/requirements-multimodal.txt`

```shell
# From alphapepttools-manuscript
conda create -n alphapepttools python=3.13 -y && conda activate alphapepttools
pip install -r requirements/requirements-multimodal.txt
```

The main MOFA+ analysis is performed in the notebook `analysis/study_05_multimodal.ipynb`. Output will be written to the `./data` directory. Paper-specific downstream analyses are performed in the additional notebooks.


## Data availability 

The original data was obtained bz running the `data/downloads.sh` script (which needs pridepy)

```bash
cd data
bash download.sh
```
Data was ingested into anndata objects with the notebooks (`data/io-methylome-paper.ipynb`, `data/io-rna-paper.ipynb`).

## References
1. **Proteomics Data**: Lehtiö, J. et al. Proteogenomics of non-small cell lung cancer reveals molecular subtypes associated with specific therapeutic targets and immune-evasion mechanisms. Nat Cancer 2, 1224–1242 (2021). [PXD020191](https://www.ebi.ac.uk/pride/archive/projects/PXD020191)

2. **Methylation data** Karlsson, A. et al. Genome-wide DNA Methylation Analysis of Lung Carcinoma Reveals One Neuroendocrine and Four Adenocarcinoma Epitypes Associated with Patient Outcome. Clin Cancer Res 20, 6127–6140 (2014).

3. **RNA microarray data** Karlsson, A. et al. Gene Expression Profiling of Large Cell Lung Cancer Links Transcriptional Phenotypes to the New Histological WHO 2015 Classification. J Thorac Oncol 12, 1257–1267 (2017).
