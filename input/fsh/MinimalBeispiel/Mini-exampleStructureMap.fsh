Instance: Mini-exampleStructureMap
InstanceOf: StructureMap
Usage: #definition
Title: "Mini-exampleStructureMap"
Description: "StructureMap um eine extraction durchzuführen"
* url = "https://example.org/fhir/StructureMap/Mini-ExampleStructureMap"
* name = "StructureMap for extraction"
* status = #draft
* structure[+]
  * url = "http://example.org/fhir/QuestionnairesSDC/QuestionnaireResponse/MinimalPSAExample5"
  * mode = #source
  * alias = "QuestionnaireResponse"
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Bundle"
  * mode = #target
  * alias = "BasicBundle"
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Observation"
  * mode = #target
  * alias = "BasicObservation"
* structure[+]
  * url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
  * mode = #target
  * alias = "PathoFinding"
* structure[+]
  * url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen"
  * mode = #target
  * alias = "PathoSpecimen"
* structure[+]
  * url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item"
  * mode = #target
  * alias = "PathoCondition"
* group[+]
  * name = "Example"
  * typeMode = #none
  * input[+]
    * name = "QR"
    * type = "QuestionnaireResponse"
    * mode = #source
  * input[+]
    * name = "BObservation"
    * type = "BasicObservation"
    * mode = #target
  * rule[+]  
    * name = "extraction"
    * source[+]
      * context = "QuestionnaireResponse"
    * target[+]
      * context = "BObservation"
      * contextType = #type
      * element = "id"
      * parameter.valueString = "123"
      * transform = #create
    * target[+]
      * context = "BObservation"
      * contextType = #type
      * element = "note.text"
      * parameter.valueString = "456"
      * transform = #create
  * rule[+]
    * name = "extraRule"
    * source[+]
      * context = "QuestionnaireResponse"
    * target[+]
      * context = "BObservation"
      * contextType = #type
      * element = "id"
      * parameter.valueString = "789"
      * transform = #create
