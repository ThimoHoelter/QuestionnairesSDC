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
// Observation-based extraction 
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
// Definition-based extraction
* item[+] // Erstellung des Observations-Grouper
  * insert addExtractionContextGrouperNew("Observation_additional-Grouper", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper#Observation", #Observation) 
* item[+] // Erstellung der PathoFindings
  * insert addExtractionContextGrouperNew("Observation_PSA-Serologie", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
  * item[+] // Ab hier wird das Finding befüllt
    * initial.valueCoding = $loinc#77599-9 "Additional documentation"
    * insert addExtractionHiddenItem("PSA-Serologie_Category_SectionType", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.category")
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code")
    * initial.valueCoding = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
  * item[+] //Einziges Item welches im Formular angezeigt wird
    * insert addExtractionItem("PSA-Serologie_Value", #decimal, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.value") 
    * text =  "PSA-Serologie"
    * code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma" // noch notwendig?
    * initial.valueDecimal = 1.23
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit" //Maßeinheit für den Renderer
    * extension[=].valueCoding = $unitsofmeasure#ng/mL "ng/mL"
  * item[+] // Maßeinheit (Displayname, System und Code werden ins Finding übertragen)
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_Display", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.unit")
    * initial.valueString = "ng/mL"
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_Code", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.code")
    * initial.valueString = "ng/mL"
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_System", #url, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.system")
    * initial.valueUri = $unitsofmeasure
* item[+]
  * insert addExtractionContextGrouperNew("definitionGrouperDiagnosticReport", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report#DiagnosticReport", #DiagnosticReport)
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
  * item[+]
  * item[=].linkId = "ReferenceToServiceRequest"
  * item[=].type = #reference
  * item[=].enableBehavior = #all
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report#DiagnosticReport.basedOn"
  * item[=].initial.valueReference = Reference(http://localhost:8080/fhir/ServiceRequest?identifier=E18-321654)
  * item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
  * item[=].extension[=].valueBoolean = true
  /** item[+].linkId = "ReferenceToAdditionalGrouper"
  * item[=].type = #reference
  * item[=].enableBehavior = #all
  * item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report#DiagnosticReport.result"
  * item[=].initial.valueReference = Reference(http://localhost:8080/fhir/Observation?category=77599-9)*/
// Bei notwendiger Generierung einer neuen Ressource mit einem oder mehreren zu übertragenden Items
RuleSet: addExtractionContextGrouperNew(linkId, definition, code)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueCode = {code}

// Update-Grouper für bestehende Ressourcen
RuleSet: addExtractionContextGrouperUpdate(linkId, definition)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueExpression
    * language = #text/fhirpath


// Item aus Eingabeformular
RuleSet: addExtractionItem(linkId, type, definition) 
* linkId = {linkId}
* type = {type}
* definition = {definition}
* enableBehavior = #all

// Item zur Übertragung "versteckter" Daten
RuleSet: addExtractionHiddenItem(linkId, type, definition)
* insert hiddenItem(true)
* linkId = {linkId}
* type = {type}
* definition = {definition}
* enableBehavior = #all
//* initial.value...
