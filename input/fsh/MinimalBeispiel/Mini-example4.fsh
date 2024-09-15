Instance: MinimalPSAExample4
InstanceOf: Questionnaire
Usage: #definition
* insert launchContext(patient, #Patient, "Patient mit Informationen")
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* url = "http://example.org/fhir/QuestionnairesSDC/Questionnaire/MinimalPSAExample4"
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
//* insert variable("probenID" and {{%questionnaire.repeat(item).where(linkId='2.16.840.1.113883.3.1937.777.18.2.29').answer.value}})

* item[+] //Prepopulation!
  * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.29", #string, "Proben-ID -nummer") //Platzhalter
        //* insert addPrePopListItem("2.16.840.1.113883.3.1937.777.18.2.29", #reference, "Proben-ID -nummer", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.specimen", "Specimen?subject={{%patient.id}}") //ServiceRequest mit einbeziehen in Abfrage!!
  * initial.valueString = "ABC"
  * code = $sct#372274003 "Sample identification number (observable entity)"
* item[+]
  * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11243", #open-choice, "Lokalisation der Entnahmestelle")
  * initial.valueCoding = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
  * code = $loinc#94738-2 "Biopsy site [Anatomy]"
  * answerOption[+].valueCoding = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716909008 "Structure of middle regional part of anterior fibromuscular stroma of right half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716935009 "Structure of apical part of peripheral zone"
  * answerOption[+].valueCoding = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716902004 "Structure of basal part of peripheral zone of right half prostate (body structure)"
  * answerOption[+].valueCoding = $sct#716903009 "Structure of basal part of peripheral zone of left half prostate (body structure)"

// Fazit: InitialExpression funktioniert nicht auf dem HAPI

* item[+]
  * insert addExtractionContextGrouperNew("PathoFinding_Macro", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
  * item[+]
    * insert addExtractionHiddenItem("Stanzlaenge_ProbenID", #string, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.specimen.reference")
  //  * insert initialExpression({{%probenID}}, "Referenz mit Hilfe der ProbenID")
  * item[+]
    * insert addExtractionHiddenItem("Stanzlaenge_Entnahmestelle", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.bodySite.coding")
//    * insert initialExpression({{%entnameStelle}}, "Übertragung des Codes zur Entnahmestelle")
  * item[+]
    * insert addExtractionHiddenItem("Stanzlaenge_Entnahmestelle2", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.bodySite.coding")
  * item[=].extension[+]
  * item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
  * item[=].extension[=].valueExpression.language = #text/fhirpath
  * item[=].extension[=].valueExpression.expression = "{{%questionnaire.repeat(item).where(linkId='2.16.840.1.113883.3.1937.777.18.2.4.11243').answer.value}}"
  * item[=].extension[=].valueExpression.description = "Übertragung des Codes"


//* insert variable("entnahmeStelle", [[{{"%resource.repeat(item).where(linkId = '2.16.840.1.113883.3.1937.777.18.2.4.11243').answer.value"}}]])