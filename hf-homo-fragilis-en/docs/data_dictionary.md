# Homo Fragilis — Data Dictionary (v1.0 draft)

Date/time fields use **ISO-8601 (UTC)**. Spatial data is stored in **WGS84 (EPSG:4326)** and analyzed in **UTM36N (EPSG:32636)**.

## 1) discourses.csv
| Field | Type | Description |
|---|---|---|
| id | string | Unique record ID. |
| t_utc | datetime (UTC) | Timestamp of the discourse. |
| actor | string | Speaker/institution. |
| role | string? | Role/position (e.g., prime minister). |
| source | string | Source tag (gov_il, social, etc.). |
| url | string? | Source URL. |
| text | string | The text body. |
| lang | string | Language code (en, he, ar, tr…). |
| code_dehumanization | float [0,1] | Dehumanization code (0–1). |
| code_collective_punishment | float [0,1] | Collective punishment code (0–1). |
| code_eliminationist | float [0,1] | Eliminationist code (0–1). |
| overall_toxicity | float [0,1] | Overall toxicity score (0–1). |
| coder_id | string | Coder pseudonym/ID. |
| time_confidence | enum{A,B,C,D} | A: ≤6h, B: ≤24h, C: ≤7 days, D: >7 days. |

## 2) incidents.geojson
| Field | Type | Description |
|---|---|---|
| id | string | Unique incident ID. |
| t_start_utc | datetime | Incident start (UTC). |
| t_end_utc | datetime? | Incident end (UTC). |
| t_mid_utc | datetime? | Mid time (optional). |
| time_confidence | enum{A,B,C,D} | Timestamp confidence class. |
| type | string | Incident type (airstrike, shelling, siege…). |
| subtype | string? | Sub-type. |
| casualties | int≥0? | Casualties (if available). |
| infrastructure_damage_class | string? | Damage class (none, minor, major, destroyed…). |
| geom | GeoJSON geometry | Point/polygon/line. |

## 3) facilities.geojson
| Field | Type | Description |
|---|---|---|
| fid | string | Facility ID. |
| ftype | enum{hospital,school,water} | Facility type. |
| capacity | int? | Capacity (e.g., beds). |
| status | enum{operational,damaged,destroyed,unknown} | Operational status. |
| geom | GeoJSON geometry | Facility geometry (point/polygon). |

## 4) watsan.csv
| Field | Type | Description |
|---|---|---|
| cell_id | string | Hexagon cell ID. |
| t_utc | datetime | Observation time. |
| water_lpcd | float | Liters per capita per day. |
| watsan_fail | int {0,1} | WASH failure flag. |
| notes | string? | Free text notes. |

## 5) hexbins.geojson
| Field | Type | Description |
|---|---|---|
| cell_id | string | Hexagon/cell ID. |
| geom | GeoJSON polygon | Cell geometry. |

## 6) features_by_cell.csv
| Field | Type | Description |
|---|---|---|
| cell_id | string | Hexagon ID. |
| t_utc | datetime | Aggregation time. |
| impact_points_count_380 | int≥0 | Count of incidents within 380 m (per facility). |
| impact_points_wcount_800 | float≥0 | Age-weighted incident count within 800 m. |
| watsan_fail | int {0,1} | WASH failure in the cell. |
| threshold_flags_sum | int≥0 | Sum of threshold exceedance flags. |
| SOI_auto | float? | Sphere/Severity of Impact score (NA if criteria missing). |

**Notes**
- `time_confidence`: Only A/B feed strict correlation; C/D used for trend/sensitivity only.
- `SOI_auto`: `0` means “rules applied and no events”. If criteria missing, **NA**.
