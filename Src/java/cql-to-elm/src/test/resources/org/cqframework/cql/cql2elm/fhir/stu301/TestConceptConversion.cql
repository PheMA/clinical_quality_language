library mCODE version '1'

using FHIR version '3.0.1'
include FHIRHelpers version '3.0.1' called FHIRHelpers

codesystem "LOINC": 'http://loinc.org'

code "ECOG performance code": '89262-0' from "LOINC" display 'ECOG Performance Status [Interpretation]'
code "Karnofsky performance code": '89245-5' from "LOINC" display 'Karnofsky Performance Status [Interpretation]'

concept "ECOG performance score" : { "ECOG performance code" }
concept "Karnofsky performance score" : { "Karnofsky performance code" }

define TestCodeComparison:
  [Observation] O
    where O.code ~ "ECOG performance code"

define TestConceptComparison:
  [Observation] O
    where O.code ~ "ECOG performance score"

