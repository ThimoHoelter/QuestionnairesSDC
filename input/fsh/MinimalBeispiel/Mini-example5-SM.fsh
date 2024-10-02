Instance: MinimalPSAExample5
InstanceOf: Questionnaire
Usage: #definition
* insert launchContext(patient, #Patient, "Patient mit Informationen")
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* url = "http://example.org/fhir/QuestionnairesSDC/Questionnaire/MinimalPSAExample5"
* name = "StructurMap_based_extraction_example"
* title = "Example for StructureMap-based extraction"
* status = #draft
* experimental = false
* date = "2024-04-26T10:26:24Z"
* subjectType = $resourceType#Patient
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
* extension[=].valueCode = $resourceType#Practitioner
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://localhost:8080/fhir/StructureMap/"
