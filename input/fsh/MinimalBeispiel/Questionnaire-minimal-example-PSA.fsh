Alias: $unitsofmeasure = http://unitsofmeasure.org
Instance: MinimalPSAExample
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* url = "http://example.org/fhir/QuestionnairesSDC/Questionnaire/MinimalPSAExample"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.10"
* name = "Definition_based_extraction_example"
* title = "Example for definition-based extraction"
* status = #draft
* experimental = false
* date = "2024-04-26T10:26:24Z"
* subjectType = $resourceType#Patient
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
* extension[=].valueCode = $resourceType#Practitioner
/*
// Frage zur PSA-Serologie (Gleiche Bedinung)
* item[+]
  * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
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
*/

* item[+]
  * insert addExtractionContextCodeItem("Observation_PSA-Serologie", #group , "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
  * item[+]
    * insert hiddenItem(true)
  * item[=].linkId = "PSA-Serologie_Code"
  * item[=].type = #choice
  * item[=].initial.valueCoding = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code"
  * item[+]
  * item[=].linkId = "PSA-Serologie_Value"
  * item[=].type = #decimal
  * item[=].enableBehavior = #all
  * item[=].text =  "PSA-Serologie"
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.value"
  * item[=].code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
  * item[=].initial.valueDecimal = 1.23
  * item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit" //Maßeinheit für den Renderer
  * item[=].extension[=].valueCoding = $unitsofmeasure#ng/mL "ng/mL"
  * item[+]
    * insert hiddenItem(true)
  * item[=].linkId = "PSA-Serologie_Unit_Display"
  * item[=].type = #text
  * item[=].initial.valueString = "ng/mL"
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.unit"
  * item[+]
    * insert hiddenItem(true)
  * item[=].linkId = "PSA-Serologie_Unit_Code"
  * item[=].type = #text
  * item[=].initial.valueString = "ng/mL"
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.code"
  * item[+]
    * insert hiddenItem(true)
  * item[=].linkId = "PSA-Serologie_Unit_System"
  * item[=].type = #url
  * item[=].initial.valueUri = $unitsofmeasure
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.system"



* item[+]
  * insert addExtractionContextCodeItem("definitionGrouperDiagnosticReport", #group, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report#DiagnosticReport", #DiagnosticReport)
  * item[+]
    * insert hiddenItem(true)
  * item[=].linkId = "KlinischesTNM_Code"
  * item[=].type = #choice
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report#DiagnosticReport.code.coding"
  * item[=].initial.valueCoding = $loinc#75620-5 "TNM clinical staging before treatment panel Cancer"
  * item[+]
  * item[=].linkId = "KlinischesTNM_Value"
  * item[=].type = #string
  * item[=].enableBehavior = #all
  * item[=].text =  "Klinisches TNM"
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report#DiagnosticReport.conclusion"
  * item[=].initial.valueString = "pT1N1M0"

RuleSet: addExtractionContextCodeItem(linkId, type, definition, code)
* linkId = {linkId}
* type = {type}
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueCode = {code}

RuleSet: addExtractionContextExpressionItem(linkId, type, definition, expression)
* linkId = {linkId}
* type = {type}
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueExpression
    * language = #text/fhirpath
    * expression = {expression}