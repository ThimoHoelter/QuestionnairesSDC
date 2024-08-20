Instance: MinimalPSAExample2
InstanceOf: Questionnaire
Usage: #definition
* insert launchContext(patient, #Patient, "Patient mit Informationen")
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* url = "http://example.org/fhir/QuestionnairesSDC/Questionnaire/MinimalPSAExample2"
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

* item[+]
* item[=].linkId = "specimen-identification"
* item[=].text = "Proben-ID:"
* item[=].type = #reference
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
* item[=].extension[=].valueExpression.description = "Listet alle Proben auf, die zu dem Patienten gehören"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "Specimen?subject={{%patient.id}}"

* item[+]
* item[=].linkId = "patient-practfhirx"
* item[=].text = "Patient-ID:"
* item[=].type = #reference
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
* item[=].extension[=].valueExpression.description = "Listet alle Proben auf, die zu dem Patienten gehören"
* item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].extension[=].valueExpression.expression = "Practitioner?communication=&active=true"
* item[+]
* item[=].linkId = "patient-namefhirx"
* item[=].text = "Patient-ID:"
* item[=].type = #reference
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
* item[=].extension[=].valueExpression.description = "Listet alle Proben auf, die zu dem Patienten gehören"
* item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].extension[=].valueExpression.expression = "Practitioner?name.given=&active=true"
* item[+]
* item[=].linkId = "patient-name"
* item[=].text = "Patient-ID:"
* item[=].type = #reference
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
* item[=].extension[=].valueExpression.description = "Listet alle Proben auf, die zu dem Patienten gehören"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "Practitioner?name.given={{%patient.name.given}}"

* item[+]
* item[=].linkId = "patient-name_initial"
* item[=].text = "Patient-ID:"
* item[=].type = #string
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].extension[=].valueExpression.description = "Listet alle Proben auf, die zu dem Patienten gehören"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.name.given"

* item[+]
* item[=].linkId = "patient-specimen_initial"
* item[=].text = "Patient-ID:"
* item[=].type = #string
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].extension[=].valueExpression.description = "Listet alle Proben auf, die zu dem Patienten gehören"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "Specimen.identifier?subject={{%patient.id}}"