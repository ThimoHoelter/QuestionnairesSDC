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
* subjectType = $resourceType#Observation
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
  * insert addGrouperItem("definitionGrouper_Patient", #group, "http://hl7.org/fhir/Patient#Patient", #Patient)
  * item[+]
  * item[=].linkId = "PatientsFirstName"
  * item[=].type = #string
  * item[=].answerOption.valueString = "John"
  * item[=].enableBehavior = #all
  * item[=].text =  "First name of the patient"
  * item[=].definition = "http://hl7.org/fhir/Patient#Patient.name.given"
  * item[+]
  * item[=].linkId = "PatientsFamilyname"
  * item[=].type = #string
  * item[=].answerOption.valueString = "Doe"
  * item[=].enableBehavior = #all
  * item[=].text =  "Last name of the patient"
  * item[=].definition = "http://hl7.org/fhir/Patient#Patient.name.family"

RuleSet: addGrouperItem(linkId, type, definition, code)
* linkId = {linkId}
* type = {type}
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueCode = {code}