[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20485286.svg)](https://doi.org/10.5281/zenodo.20485286)
[![CC BY 4.0][cc-by-shield]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg

# Electronic Notebook: From Intermolecular Poses to Thermodynamics using Subdivided Spheres

This notebook contains supplementary data and workflows for the above article published in [ACS Journal of Physical Chemistry B, 2026](https://doi.org/10.1021/acs.jpcb.6c01665).

## Contents

| Subdirectory          | Notebook             | Description                                                                                              |
| --------------------- | -------------------- | -------------------------------------------------------------------------------------------------------- |
| `area_fluctuations/`  | `stddev.ipynb`       | Standard deviation of pose-cluster weights for N = 0..10.                                                |
| `b2_vs_temperature/`  | `plotting.ipynb`     | Reduced B₂/B₂ʰˢ of patchy particle P¹₈ vs temperature and ionic strength (fixed and T-dep. dielectric).  |
| `mc-vs-duello/`       | `plot.ipynb`         | Faunus Monte Carlo PMF compared with Duello PMF for the CPPM (P18) model.                                |
| `pca_free_energy/`    | `pca_analysis.ipynb` | PCA of Duello trajectories of Cgn under three Calvados3 variants, with experimental PDB refs.            |
| `protein_b2/`         | `plot.ipynb`         | B₂ for lysozyme and Cgn at pH 7 across three Calvados variants vs experimental B₂.                       |

## Reproducing the environment

Dependencies are managed with [uv](https://docs.astral.sh/uv/). To recreate the
exact environment used for the notebooks:

```sh
uv sync
uv run jupyter lab
```

`uv sync` reads `pyproject.toml` and `uv.lock` and installs the pinned versions
into a local `.venv`.

## Linting and formatting

[Ruff](https://docs.astral.sh/ruff/) is included as a dev dependency:

```sh
uv run ruff check     # lint notebooks and .py scripts
uv run ruff format    # format notebooks and .py scripts
```
