Alias: $unitsofmeasure = http://unitsofmeasure.org
/*
http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtract
http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtractBundle
http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtractContext
http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtractValue
http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extractAllocateId
*/
Instance: PSA-Beobachtung
InstanceOf: Observation
Usage: #Inline
Title: "PSA Beobachtung"
Description: "Zu befuellende Instanz"
* id = "psaObservationTemplate"
* code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* status = #final
* valueQuantity.value.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtractValue"
* valueQuantity.value.extension.valueString = "item.where(linkId = 'psaValue').answer.value"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #ng/mL
* valueQuantity.unit = "ng/mL"

Instance: Grouper
InstanceOf: Observation
Usage: #Inline
Title: "Grouper"
Description: "Grouper"
* id = "grouperObservationTemplate"
* code = $loinc#83321-0
* note.text.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtractValue"
* note.text.extension.valueString = "item.where(linkId = 'GrouperCode').answer.value"
* status = #final
* hasMember.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtractValue"
* hasMember.extension.valueString = "%NewPsaObservationId"

Instance: templateBasedExtr
InstanceOf: Questionnaire
Usage: #definition
* url = "http://example.org/fhir/QuestionnairesSDC/Questionnaire/templateBasedExtr"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.10"
* name = "Template_based_extraction_example"
* title = "Example for template-based extraction"
* status = #draft
* experimental = false
* subjectType = $resourceType#Patient
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
* extension[=].valueCode = $resourceType#Practitioner
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extractAllocateId"
* extension[=].valueString = "NewPsaObservationId"
* contained[+] = PSA-Beobachtung
* contained[+] = Grouper

* item[+].linkId = "psaObservationitem"
* item[=].text = "Grouperitem für die PSA-Observation"
* item[=].type = #group
// * item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extractAllocateId"
// * item[=].extension[=].valueString = "NewPsaObservationId"
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtract"
* item[=].extension[=].extension[+].url = "template"
* item[=].extension[=].extension[=].valueReference.reference = "#psaObservationTemplate"
* item[=].extension[=].extension[+].url = "fullUrl"
* item[=].extension[=].extension[=].valueString = "%NewPsaObservationId"
* item[=].item[+].linkId = "psaValue"
* item[=].item[=].type = #decimal 
* item[=].item[=].text = "Angaben zur PSA-Serologie" 
* item[=].item[=].initial.valueDecimal = 1.23

* item[+].linkId = "grouperObservationitem"
* item[=].text = "Grouperitem für die Grouper-Observation"
* item[=].type = #group
* item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtract"
* item[=].extension[=].extension[+].url = "template"
* item[=].extension[=].extension[=].valueReference.reference = "#grouperObservationTemplate"
* item[=].item[+].linkId = "GrouperNote"
* item[=].item[=].type = #string