from pydantic import BaseModel, HttpUrl, conint, confloat
from typing import Optional, Literal

class Discourse(BaseModel):
    id: str
    t_utc: str
    actor: str
    role: Optional[str] = None
    source: str
    url: Optional[HttpUrl] = None
    text: str
    lang: str
    code_dehumanization: confloat(ge=0, le=1)
    code_collective_punishment: confloat(ge=0, le=1)
    code_eliminationist: confloat(ge=0, le=1)
    overall_toxicity: confloat(ge=0, le=1)
    coder_id: str
    time_confidence: Literal["A","B","C","D"]

class Incident(BaseModel):
    id: str
    t_start_utc: str
    t_end_utc: Optional[str] = None
    t_mid_utc: Optional[str] = None
    time_confidence: Literal["A","B","C","D"]
    type: str
    subtype: Optional[str] = None
    casualties: Optional[conint(ge=0)] = None
    infrastructure_damage_class: Optional[str] = None
    # geometry is stored as GeoJSON when promoted to processed stage (validated in GIS pipeline)
