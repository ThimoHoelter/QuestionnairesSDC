// Allgemeine RulesSets
RuleSet: maxDecimalPlaces(maxPlaces)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
  * valueInteger = {maxPlaces}

RuleSet: uunit(code)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * valueCoding = $unitsofmeasure#{code}
  
  RuleSet: itemControl(code)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#{code}

RuleSet: addItem(linkId, type, text)
* linkId = {linkId}
* type = {type}
* text = {text}
* enableBehavior = #all

RuleSet: addRItem(linkId, type, text)
* insert addItem({linkId}, {type}, {text})
* required = true

RuleSet: AnswerExpressionItem(linkId, type, text, definition, description, expression)
* insert addExtractionItem({linkId}, {type}, {text}, {definition})
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueExpression
    * description = {description}
    * language = #text/fhirpath
    * expression = {expression}

//Observation based extraction
RuleSet: observationExtract
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
  * valueBoolean = true

RuleSet: observationExtract_laboratory_InCategory
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
  * valueCodeableConcept = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

RuleSet: observationExtractSectionInCategory(code)
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
  * valueCodeableConcept = $patho-sections#{code}


//Definition based extraction
// Bei notwendiger Generierung einer neuen Ressource mit einem oder mehreren zu übertragenden Items
RuleSet: addExtractionContextGrouperNew(linkId, definition, code)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueCode = {code}

RuleSet: addExtractionContextTextGrouperNew(linkId, definition, code)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueCode = {code}

// Update-Grouper für bestehende Ressourcen
RuleSet: addExtractionContextGrouperUpdate(linkId, definition, expression)
* insert hiddenItem(true)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueExpression
    * language = #text/fhirpath
    * expression = {expression}

// Item aus Eingabeformular
RuleSet: addExtractionItem(linkId, type, text, definition) 
* linkId = {linkId}
* text = {text}
* type = {type}
* definition = {definition}

// Item zur Übertragung "versteckter" Daten
RuleSet: addExtractionHiddenItem(linkId, type, definition)
* insert hiddenItem(true)
* linkId = {linkId}
* type = {type}
* definition = {definition}
* enableBehavior = #all
//* initial.value...
// PathoFinding Voraussetzung Observation.category  
RuleSet: addPathoFindingLaboratoryCode(linkId)
* insert hiddenItem(true)
* linkId = {linkId}
* type = #choice
* definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.category"
* enableBehavior = #all
* initial.valueCoding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

// PathoFinding.status 
RuleSet: addPathoFindingStatusCode(linkId, code)
* insert hiddenItem(true)
* linkId = {linkId}
* type = #choice
* definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.status"
* enableBehavior = #all
* initial.valueCoding = $Observation-Status#{code}

RuleSet: addPathoListItemCategoryCode(linkId)
* insert hiddenItem(true)
* linkId = {linkId}
* type = #choice
* definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.category"
* enableBehavior = #all
* initial.valueCoding = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

RuleSet: addPathoFindingSectionCode(linkId, code) 
* insert hiddenItem(true)
* linkId = {linkId}
* type = #choice
* definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.category.coding"
* enableBehavior = #all
* initial.valueCoding = $loinc#{code}


// Population
RuleSet: addPrePopListItem(linkId, type, text, expression)
* linkId = {linkId}
* type = {type}
* text = {text}
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
  * valueExpression
    * language = #text/fhirpath
    * expression = {expression}