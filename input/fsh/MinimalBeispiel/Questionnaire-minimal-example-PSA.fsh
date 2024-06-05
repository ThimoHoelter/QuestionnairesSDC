Alias: $unitsofmeasure = http://unitsofmeasure.org
Instance: MinimalPSAExample
InstanceOf: Questionnaire
Usage: #example
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* language = #de-DE
* url = "https://art-decor.org/fhir/Questionnaire/EingabeformularfuerKlinischeAngabenBeiStanzbiopsien"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.10"
* name = "Eingabeformular_fur_Klinische_Angaben_bei_Stanzbiopsien"
* title = "Eingabeformular für Klinische Angaben bei Stanzbiopsien"
* status = #draft
* experimental = false
* date = "2024-04-26T10:26:24Z"

// Frage zur PSA-Serologie (Gleiche Bedinung)
* item[+]
* item[=].linkId = "PSA-Serologie"
* item[=].type = #decimal
* item[=].text =  "Angaben zur PSA-Serologie"
* item[=].code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* item[=].enableBehavior = #all
* item[=].extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
  * valueInteger = 2
* item[=].extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * valueCoding = $unitsofmeasure#ng/mL
* item[=].extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
  * valueBoolean = true
* item[=].extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
  * valueCodeableConcept = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
//* item[+]
/* item[=].linkId = "examplequestionairequestionid1"
* item[=].type = #code
* item[=].text =  "Angaben zur Diagnose"
//* item[=].code = $sct#439401001 "Diagnosis (observable entity)"
* item[=].enableBehavior = #all
* answerOption[+].valueCoding = $ICD10GM#C73
//* item[=].extension[+]
//  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
//  * valueCode = #Condition
*/
