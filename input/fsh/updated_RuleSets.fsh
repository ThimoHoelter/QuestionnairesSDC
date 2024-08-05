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


//Observation based extraction
RuleSet: observationExtract
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
  * valueBoolean = true

RuleSet: observationExtract_laboratory_InCategory
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
  * valueCodeableConcept = http://terminology.hl7.org/CodeSystem/observation-category#{laboratory}

RuleSet: observationExtractSectionInCategory(code)
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
  * valueCodeableConcept = $patho-sections#{code}


//Definition based extraction
// Bei notwendiger Generierung einer neuen Ressource mit einem oder mehreren zu übertragenden Items
RuleSet: addExtractionContextGrouperNew(linkId, definition, code)
* insert hiddenItem(true)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueCode = {code}

RuleSet: addExtractionContextTextGrouperNew(linkId, text, definition, code)
* insert hiddenItem(true)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* text = {text}
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueCode = {code}

// Update-Grouper für bestehende Ressourcen
RuleSet: addExtractionContextGrouperUpdate(linkId, definition)
* insert hiddenItem(true)
* linkId = {linkId}
* type = #group
* definition = {definition}
* enableBehavior = #all
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * valueExpression
    * language = #text/fhirpath

// Item aus Eingabeformular
RuleSet: addExtractionItem(linkId, type, text, definition) 
* linkId = {linkId}
* text = {text}
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
