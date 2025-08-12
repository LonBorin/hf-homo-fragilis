# Homo Fragilis — Five‑Axis Fragility Matrix

This repository implements the **Homo Fragilis** methodology end‑to‑end in a reproducible, auditable way.

- Stack: **Python 3.11**, **R/Quarto**, **QGIS 3.x**
- Time standard: **ISO‑8601 (UTC)**
- CRS: **EPSG:32636** (analysis) / **EPSG:4326** (reporting)

## Quick Setup
```bash
mamba env create -f environment.yml && conda activate hf
pre-commit install
# Optional: DVC for large data
# dvc init && dvc remote add -d localremote ../hf_dvc_remote
```

## Directory Layout
```
/data
  /raw/{who_herams,ocha_sitreps,wfp,unosat,btselem,gov_il}
  /interim
  /processed
/docs
/ethics
/notebooks
/src/{ingest,clean,features,analysis,viz,validation}
/outputs/{figures,tables,maps}
```
- `docs/data_dictionary.md` → canonical data dictionary
- `outputs/maps/hf_project.qgs` → QGIS project
- `.github/workflows/ci.yml` → CI: lint + tests

## QGIS
- Project: `outputs/maps/hf_project.qgs`
- Styles: `outputs/maps/styles/*`
- Model: `outputs/maps/models/hf_soi_pipeline.model3`

## Sprint‑0 Deliverables
- Repository skeleton + environment
- Ethics drafts (`ethics/positionality_statement.md`, `ethics/risk_mitigation.md`)
- Templates (`thresholds.yaml`, `care_coding.yml`)
- Validation scaffolding (`src/validation/schemas.py`), unit test (`tests/test_sanity.py`)
- CI workflow

## License
MIT — see `LICENSE`.
