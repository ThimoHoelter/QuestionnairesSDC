Instance: MinimalPSAExample3
InstanceOf: Questionnaire
Usage: #definition
* insert launchContext(patient, #Patient, "Patient mit Informationen")
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* url = "http://example.org/fhir/QuestionnairesSDC/Questionnaire/MinimalPSAExample3"
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

// Funktioniert nicht
* item[+]
  * insert addExtractionContextGrouperNew("Observation_PSA-SerologieInitialQuantity", "http://hl7.org/fhir/StructureDefinition/Observation#Observation", #Observation)
  * item[+]
    * insert addExtractionItem("SerologieInitialQuantity", #quantity, "Angaben zur PSA-Serologie", "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.value")
    * initial.valueQuantity.value = 1.23
    * initial.valueQuantity.unit = "%"
    * initial.valueQuantity.system = $unitsofmeasure
    * initial.valueQuantity.code = #%

// Funktioniert
* item[+]
  * insert addExtractionContextGrouperNew("Observation_PSA-SerologieEinzeln", "http://hl7.org/fhir/StructureDefinition/Observation#Observation", #Observation)
  * item[+]
    * insert addExtractionItem("SerologieEinzeln", #decimal, "Angaben zur PSA-Serologie", "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.value")
    * initial.valueDecimal = 1.234
  * item[+] // Maßeinheit (Displayname, System und Code werden in die Observation übertragen)
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_Display", #text, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.unit")
    * initial.valueString = "ng/ml"
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_Code", #text, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.code")
    * initial.valueString = "ng/mL"
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_System", #url, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.system")
    * initial.valueUri = $unitsofmeasure

// Überträgt Wert aber keine Einheit = Funktioniert nicht
* item[+]
  * insert addExtractionContextGrouperNew("Observation_PSA-SerologieUUNIT", "http://hl7.org/fhir/StructureDefinition/Observation#Observation", #Observation)
  * item[+]
    * insert addExtractionItem("SerologieUUNIT", #decimal, "Angaben zur PSA-Serologie", "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.value")
    * insert uunit(cm)
    * initial.valueDecimal = 1.23



    