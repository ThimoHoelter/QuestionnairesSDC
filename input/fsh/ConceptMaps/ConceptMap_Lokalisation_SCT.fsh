/*Instance: CM-ProstataProbeEntnahmestelleSCT
InstanceOf: ConceptMap
Usage: #definition
* url = "http://example.org/ConceptMap/cm-prostata-proben-entnahmestelle-sct"
* name = "CM_Prostata_Proben_Entnahmestelle_Mapping_SNOMED_CT"
* title = "CM Prostata Proben Entnahmestelle Mapping SNOMED CT"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Entnahmestelle der Probe auf Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "http://example.org/fhir/ConceptMap/cm-prostata-proben-entnahmestelle-sct"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $cs-prostata-proben-entnahmestelle-sct
* group[=].target = "http://snomed.info/sct"


* group[=].element[+].code = #RLM
* group[=].element[=].display = "Rechts lateral Mitte"
* group[=].element[=].target.code = #716917000
* group[=].element[=].target.display = "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* group[=].element[=].target.equivalence = #equivalent
*/