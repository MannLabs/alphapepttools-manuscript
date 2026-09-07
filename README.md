# alphapepttools-manuscript
[![Build environment](https://github.com/MannLabs/alphapepttools-manuscript/actions/workflows/build.yaml/badge.svg)](https://github.com/MannLabs/alphapepttools-manuscript/actions/workflows/build.yaml)

Publication code + manuscript for alphapepttools for reproducibility

## Repository structure

Analysis scripts are separated into main analyses (applications shown in Figure 1/2) and supplementary analyses.


```bash
notebooks
├── requirements
├── main
│   ├── csf (Cerebrospinal fluid study, Bader et al 2020)
│   ├── pelsa (PELSA study, Li et al, 2025)
│   ├── scdvp (scDVP study, Weiss et al, 2026)
│   └── multimodal (TMD-DDA/multimodal study, Lehtiö et al, 2021)
└── supplementary
    ├── scalability
    └── proteomics-properties
```

You can rerun the analyses by creating a python environment with the matching requirements file

```shell
conda create -n alphapepttools python=3.13 -y && conda activate alphapepttools
pip install -r requirements/requirements_{csf,pelsa,scdvp,multimodal}.txt
```