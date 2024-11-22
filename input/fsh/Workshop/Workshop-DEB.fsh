Alias: $unitsofmeasure = http://unitsofmeasure.org
Instance: WorkshopDBE
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* url = "http://example.org/fhir/QuestionnairesSDC/Questionnaire/WorkshopDBE"
* name = "Extraction_example"
* title = "Example for definition-based and observation-based extraction"
* status = #draft

// Definition-based extraction
* item[+] // Erstellung des Observations-Grouper
  * insert addExtractionContextGrouperNew("Observation_additional-Grouper", "http://hl7.org/fhir/StructureDefinition/Observation#Observation", #Observation) 
* item[+] // Erstellung der PathoFindings
  * insert addExtractionContextGrouperNew("Observation_PSA-Serologie", "http://hl7.org/fhir/StructureDefinition/Observation#Observation", #Observation)
  * item[+] // Ab hier wird das Finding befüllt
    * initial.valueCoding = $loinc#77599-9 "Additional documentation"
    * insert addExtractionHiddenItem("PSA-Serologie_Category_SectionType", #choice, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.category.coding")
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Code", #choice, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.code.coding")
    * initial.valueCoding = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
  * item[+] //Einziges Item welches im Formular angezeigt wird
    * insert addExtractionItem("PSA-Serologie_Value", #decimal, "Angaben zur PSA-Serologie", "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.value") 
    * code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma" 
    * initial.valueDecimal = 1.23
    * insert uunit(ng/mL)
  * item[+] // Maßeinheit (Displayname, System und Code werden ins Finding übertragen)
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_Display", #text, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.unit")
    * initial.valueString = "ng/mL"
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_Code", #text, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.code")
    * initial.valueString = "ng/mL"
  * item[+]
    * insert addExtractionHiddenItem("PSA-Serologie_Unit_System", #url, "http://hl7.org/fhir/StructureDefinition/Observation#Observation.valueQuantity.system")
    * initial.valueUri = $unitsofmeasure
* item[+]
  * insert addExtractionContextGrouperNew("definitionGrouperDiagnosticReport", "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport", #DiagnosticReport)
  * item[+]
  * item[=].extension[+]
  * item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
  * item[=].extension[=].valueBoolean = true
  * item[=].linkId = "KlinischesTNM_Code"
  * item[=].type = #choice
  * item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.code.coding"
  * item[=].initial.valueCoding = $loinc#75620-5 "TNM clinical staging before treatment panel Cancer"
  * item[+]
  * item[=].linkId = "KlinischesTNM_Value"
  * item[=].type = #string
  * item[=].enableBehavior = #all
  * item[=].text =  "Klinisches TNM"
  * item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.conclusion"
  * item[=].initial.valueString = "pT1N1M0"
