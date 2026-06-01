[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20485286.svg)](https://doi.org/10.5281/zenodo.20485286)
[![CC BY 4.0][cc-by-shield]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg

# Electronic Notebook: From Intermolecular Poses to Thermodynamics using Subdivided Spheres

This notebook contains supplementary data and workflows for the above article published in [ACS Journal of Physical Chemistry B, 2026](https://doi.org/10.1021/acs.jpcb.6c01665).

## Reproducing the environment

Dependencies are managed with [uv](https://docs.astral.sh/uv/). To recreate the
exact environment used for the notebooks:

```sh
uv sync
uv run jupyter lab
```

`uv sync` reads `pyproject.toml` and `uv.lock` and installs the pinned versions
into a local `.venv`.
