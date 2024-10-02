Instance: Prostata-StanzbiopsienEinzelstanze-Def-Extr
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2024-05-08T10:31:16Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* url = "https://art-decor.org/fhir/Questionnaire/Prostata-Stanzbiopsien-Einzelstanze"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.11"
* name = "Eingabe_Formular_fur_Stanzbiopsien_Einzelstanzen"
* title = "Eingabe-Formular für Stanzbiopsien-Einzelstanzen"
* status = #draft
* experimental = false
* date = "2024-05-07T15:05:24Z"
* description = "Modell für \"intelligentes\" Formular"
* effectivePeriod.start = "2024-05-07T15:05:24Z"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
* extension[=].valueCode = $resourceType#Practitioner
* subjectType = $resourceType#Patient
// Variablen für Probenvorausfüllung & FindingExtraction
* insert variable("probe", [["%resource.repeat(item).where(linkId='2.16.840.1.113883.3.1937.777.18.2.29')"]])
* insert variable("bodySite", [["%resource.repeat(item).where(linkId='2.16.840.1.113883.3.1937.777.18.2.4.11243').answer.value"]])
// Erster Grouper
* item[+]
  * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10000", #group, "Prostatakarzinome")

// Zweiter Grouper
  * item[+]
    * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10210", #group, "Stanzbiopsien")
    * code = $loinc#66117-3 "Prostate Pathology biopsy report"

//Dritter Grouper 
    * item[+]
      * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11242", #group, "Einzelproben-Ebene")
      * code[+] = $sct#441817003:116686009=309134005 "Evaluation of biopsy specimen:Has specimen=Prostate tru-cut biopsy sample"
      * repeats = true
      // Hier mit: code = $loinc#66117-3 "Prostate Pathology biopsy report" DR generieren?

//-----------------------------------------------------------------------------------------------------------------------------------
// Proben ID
      * item[+]
        //Platzhalter
        * insert addExtractionContextGrouperNew("PathoFinding_ProbenID", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.29", #string, "Proben-ID -nummer", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueString")
          * initial.valueString = "ABC"
          * code = $sct#372274003 "Sample identification number (observable entity)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_ProbenID_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $sct#372274003 "Sample identification number (observable entity)"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_ProbenID_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_ProbenID_category_section", #22634-0)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_ProbenID_status", final)
        // * insert AnswerExpressionItem("2.16.840.1.113883.3.1937.777.18.2.29", #string, "Proben-ID -nummer", "List of all specimens of the ServiceRequest", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.specimen", "Specimen?subject={{%patient.id}}") // &Specimen?request={{%ServiceRequest.id}} Frage: Wie kommt man an die SR.id?
        // Muss an ALLE Findings in diesem Formular übergeben werden (Referenz zur jeweiligen Probe über Observation.specimen!)

  // Lokalisation der Entnahmestelle
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_Entnahmestelle", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11243", #open-choice, "Lokalisation der Entnahmestelle", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * answerOption[+].valueCoding = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716909008 "Structure of middle regional part of anterior fibromuscular stroma of right half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716935009 "Structure of apical part of peripheral zone" // (body structure) fehlt!
          * answerOption[+].valueCoding = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716902004 "Structure of basal part of peripheral zone of right half prostate (body structure)"
          * answerOption[+].valueCoding = $sct#716903009 "Structure of basal part of peripheral zone of left half prostate (body structure)"
          * code = $loinc#94738-2 "Biopsy site [Anatomy]"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_Entnahmestelle_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#94738-2 "Biopsy site [Anatomy]"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_Entnahmestelle_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_Entnahmestelle_category_section", #22634-0)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_Entnahmestelle_status", final)
  // Länge der Stanzzylinder
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_Macro_Stanzenlaenge", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+] //Prepoplulation von Klinische Informationen?
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11244", #decimal, "Länge der Stanzzylinder", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.value")
          * initial.valueDecimal = 0.15
          * insert uunit(cm)
          * insert maxDecimalPlaces(3) //not supported in LHC
          * code = $loinc#44619-5 "Length of tissue core(s)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_Stanzenlaenge_Code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#44619-5 "Length of tissue core(s)"
        * item[+] // Maßeinheit (Displayname, System und Code werden in das Finding übertragen)
          * insert addExtractionHiddenItem("Stanzlaenge_Unit_Display", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.unit")
          * initial.valueString = "cm"
        * item[+]
          * insert addExtractionHiddenItem("Stanzlaenge_Unit_Code", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.code")
          * initial.valueString = "cm"
        * item[+]
          * insert addExtractionHiddenItem("Stanzlaenge_Unit_System", #url, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.system")
          * initial.valueUri = $unitsofmeasure
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_Stanzenlaenge_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_Stanzenlaenge_category_section", #22634-0)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_Stanzenlaenge_status", final)  
        //Funktioniert aktuell noch nicht
       /* * item[+]
          * insert addExtractionHiddenItem("Stanzlaenge_ProbenID", #string, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.specimen.reference")
          * insert initialExpression([["%probe.id.first()"]], "Referenz mit Hilfe der ProbenID")
        * item[+]
          * insert addExtractionHiddenItem("Stanzlaenge_Entnahmestelle", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.bodySite.coding")
          * insert initialExpression([["%resource.repeat(item).where(linkId='2.16.840.1.113883.3.1937.777.18.2.4.11243').answer.value"]], "Übertragung des Codes zur Entnahmestelle")
*/
  // Anzahl der Stanzzylinder im Einsendegefäß
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_Macro_AnzahlZylinder", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10240", #decimal, "Anzahl der Stanzzylinder im Einsendungsgefäß", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.value")
          * initial.valueDecimal = 1
          * code = $loinc#44652-6 "Total number of cores Tissue core"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_AnzahlZylinder_Code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#44652-6 "Total number of cores Tissue core"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_AnzahlZylinder_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_AnzahlZylinder_category_section", #22634-0)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_AnzahlZylinder_status", final)   
//-----------------------------------------------------------------------------------------------------------------------------------------
// Micro-Grouper
  // Erstellung und Befüllung PathoFindings
    // Histologischer Typ ICD-O-3
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_HistoTyp", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10250", #open-choice, "Histologischer Typ ICD-O-3", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding") 
          * code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
          * answerOption[+].valueCoding = $sct#110396000 "No evidence of malignant neoplasm (finding)"
          * answerOption[+].valueCoding = $ICDO-3#8140/3 "Azinäres Adenokarzinom"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $ICDO-3#8140/3 "Atrophe Variante eines Adenokarzinoms"
          * answerOption[+].valueCoding = $ICDO-3#8140/3 "Pseudohyperplastische Variante eines Adenokarzinoms"
          * answerOption[+].valueCoding = $ICDO-3#8140/3 "Mikrozystische Variante eines Adenokarzinoms"
          * answerOption[+].valueCoding = $ICDO-3#8140/3 "Foamy Gland Variante eines Adenokarzinoms"
          * answerOption[+].valueCoding = $ICDO-3#8480/3 "Muzinöses Adenokarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8490/3 "Siegelringzelliges Adenokarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8140/3 "Pleomorphe riesenzellige Variante eines Adenokarzinoms"
          * answerOption[+].valueCoding = $ICDO-3#8290/3 "Onkozytisches Adenokarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8082/3 "Lympoepitheliomartiges Adenokarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8572/3 "Karzinom mit spindelzelliger Differenzierung"
          * answerOption[+].valueCoding = $ICDO-3#8148/2 "Prostatische intraepitheliale Neoplasie (PIN), high grade"
          * answerOption[+].valueCoding = $ICDO-3#8500/2 "Intraduktales Karzinom"
          * answerOption[+].valueCoding = $ICDO-3#8500/3 "Duktales Adenokarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8201/3 "Kribriformes Karzinom"
          * answerOption[+].valueCoding = $ICDO-3#8260/3 "Papilläres Karzinom"
          * answerOption[+].valueCoding = $ICDO-3#8230/3 "Solides Karzinom"
          * answerOption[+].valueCoding = $ICDO-3#8120/3 "Urothelkarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8070/3 "Plattenepithelkarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8560/3 "Adenosquamöses Karzinom"
          * answerOption[+].valueCoding = $ICDO-3#8147/0 "Basalzelladenom"
          * answerOption[+].valueCoding = $ICDO-3#8147/3 "Basalzellkarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8574/3 "Neuroendokrin differenziertes Adenokarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8240/3 "Karzinoidtumor"
          * answerOption[+].valueCoding = $ICDO-3#8041/3 "Kleinzelliges Karzinom"
          * answerOption[+].valueCoding = $ICDO-3#8013/3 "Großzelliges neuroendokrines Karzinom"
          * answerOption[+].valueCoding = $ICDO-3#8680/1 "Paragangliom"
          * answerOption[+].valueCoding = $ICDO-3#9500/3 "Neuroblastom"
          * answerOption[+].valueCoding = $ICDO-3#8935/1 "Stromatumor mit unklarem malignen Potential"
          * answerOption[+].valueCoding = $ICDO-3#8935/3 "Stromasarkom"
          * answerOption[+].valueCoding = $ICDO-3#8890/3 "Leiomyosarkom"
          * answerOption[+].valueCoding = $ICDO-3#8900/3 "Rhabdomyosarkom"
          * answerOption[+].valueCoding = $ICDO-3#9220/3 "Chondrosarkom"
          * answerOption[+].valueCoding = $ICDO-3#9120/3 "Angiosarkom"
          * answerOption[+].valueCoding = $ICDO-3#8830/3 "Malignes fibröses Histiozytom"
          * answerOption[+].valueCoding = $ICDO-3#9540/3 "Maligner peripherer Nervenscheidentumor"
          * answerOption[+].valueCoding = $ICDO-3#9120/0 "Hämangiom"
          * answerOption[+].valueCoding = $ICDO-3#9220/0 "Chondrom"
          * answerOption[+].valueCoding = $ICDO-3#8890/0 "Leiomyom"
          * answerOption[+].valueCoding = $ICDO-3#9580/0 "Granularzelltumor"
          * answerOption[+].valueCoding = $ICDO-3#9150/1 "Hämangioperizytom"
          * answerOption[+].valueCoding = $ICDO-3#8815/0 "Solitärer fibröser Tumor"
          * answerOption[+].valueCoding = $ICDO-3#8440/0 "Zystadenom"
          * answerOption[+].valueCoding = $ICDO-3#8960/3 "Nephroblastom"
          * answerOption[+].valueCoding = $ICDO-3#8963/3 "Rhabdoidtumor"
          * answerOption[+].valueCoding = $ICDO-3#9071/3 "Dottersacktumor"
          * answerOption[+].valueCoding = $ICDO-3#9061/3 "Seminom"
          * answerOption[+].valueCoding = $ICDO-3#9081/3 "Embryonales Karzinom und Teratom"
          * answerOption[+].valueCoding = $ICDO-3#9100/3 "Chorionkarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8310/3 "Klarzelliges Adenokarzinom"
          * answerOption[+].valueCoding = $ICDO-3#8720/3 "Malignes Melanom"
          * answerOption[+].valueCoding = $ICDO-3#8000/3 "sonstige"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_HistoTyp_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_HistoTyp_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_HistoTyp_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_HistoTyp_status", final)
  
  // Morphologie Freitext      
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_MorphText", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10260", #text, "Morphologie Freitext", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueString")
          * initial.valueString = "Unregelmäßige, infiltrative Drüsenstrukturen, typisch für das azinäre Adenokarzinom."
          * code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_MorphText_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_MorphText_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_MorphText_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_MorphText_status", final)


  // Primäres Gleason Muster (Epstein 2005)
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_PrimaerGleason", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+] 
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10290", #choice, "Primäres Gleason Muster - Epstein 2005", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
          * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
          * enableWhen.operator = #!=
          * enableWhen.answerCoding = $sct#110396000
          * answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
          * answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
          * answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
          * answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
          * answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_PrimaerGleason_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_PrimaerGleason_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_PrimaerGleason_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_PrimaerGleason_status", final)


  // Sekundäres Gleason Muster (Epstein 2005)
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_SekundaerGleason", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11246", #choice, "Sekundäres Gleason Muster - Epstein 2005", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
          * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
          * enableWhen.operator = #!=
          * enableWhen.answerCoding = $sct#110396000
          * answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
          * answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
          * answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
          * answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
          * answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_SekundaerGleason_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_SekundaerGleason_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_SekundaerGleason_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_SekundaerGleason_status", final)

  // Prozentualer Anteil Gleasonmuster 4/5
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_ProzentGleason", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)    
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.2.11144", #decimal, "Prozentualer Anteil Gleasonmuster 4/5", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.value")
          * insert uunit(%)
          * initial.valueDecimal = 75
          * code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
          * enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#369773008 "Muster 4"
          * enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#369773008 "Muster 4"
          * enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#369774002 "Muster 5"
          * enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#369774002 "Muster 5"
          * enableBehavior = #all // Den Mustern müssen Werte zugeordnet werden, damit man den Gleason score innerhalb der enableWhen Function einbauen kann!
        * item[+] // Maßeinheit (Displayname, System und Code werden in die Observation übertragen)
          * insert addExtractionHiddenItem("PathoFinding_ProzentGleason_Unit_Display", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.unit")
          * initial.valueString = "%"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_ProzentGleason_Unit_Code", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.code")
          * initial.valueString = "%"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_ProzentGleason_Unit_System", #url, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.system")
          * initial.valueUri = $unitsofmeasure
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_ProzentGleason_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area [Area Fraction] in Prostate tumor by Microscopy"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_ProzentGleason_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_ProzentGleason_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_ProzentGleason_status", final)
      
  // Gradinggruppe nach ISUP 2014/WHO 2016 (ReadOnly? Automatische Berechnung der Gruppe möglich!)
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_GleasonGrading", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.2.11200", #choice, "Gradinggruppe nach ISUP 2014/WHO 2016", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $loinc#94734-1 "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
          * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
          * enableWhen.operator = #!=
          * enableWhen.answerCoding = $sct#43771008
          * answerOption[+].valueCoding = $sct#860742008 "Gleason grade group 1 (finding)"
          * answerOption[+].valueCoding = $sct#860743003 "Gleason grade group 2 (finding)"
          * answerOption[+].valueCoding = $sct#860744009 "Gleason grade group 3 (finding)"
          * answerOption[+].valueCoding = $sct#860745005 "Gleason grade group 4 (finding)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#860746006 "Gleason grade group 5 (finding)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_GleasonGrading_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#94734-1 "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_GleasonGrading_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_GleasonGrading_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_GleasonGrading_status", final)

  // Verhältnis positiver zu allen Stanzen (Plausibilitätskontrolle z.B. XX/XX)
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_VerhaeltnisPositiverStanzen", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.30", #string, "Verhältnis positiver zu allen Stanzen", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueString")
          * initial.valueString = "1/2"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_VerhaeltnisPositiverStanzen_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_VerhaeltnisPositiverStanzen_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_VerhaeltnisPositiverStanzen_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_VerhaeltnisPositiverStanzen_status", final)
  
  // Prozentualer Tumoranteil
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_Tumoranteil", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10330", #decimal, "Prozentualer Tumoranteil", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.value")
          * insert uunit(%)
          * code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
          * initial.valueDecimal = 25
        * item[+] // Maßeinheit (Displayname, System und Code werden in die Observation übertragen)
          * insert addExtractionHiddenItem("PathoFinding_Tumoranteil_Unit_Display", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.unit")
          * initial.valueString = "%"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_Tumoranteil_Unit_Code", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.code")
          * initial.valueString = "%"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_Tumoranteil_Unit_System", #url, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.system")
          * initial.valueUri = $unitsofmeasure
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_Tumoranteil_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_Tumoranteil_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_Tumoranteil_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_Tumoranteil_status", final)

  // Tumorbefall für befallene Stanze in Länge in mm (mm Einheit fehlt!)
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_TumorbefallinLaenge", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10340", #decimal, "Tumorbefall für befallene Stanze in Länge in mm", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.value")
          * code = $loinc#44618-7 "Total linear mm of carcinoma"
          * initial.valueDecimal = 5.2
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_TumorbefallinLaenge_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#44618-7 "Total linear mm of carcinoma"
        * item[+] // Maßeinheit (Displayname, System und Code werden in die Observation übertragen)
          * insert addExtractionHiddenItem("PathoFinding_TumorbefallinLaenge_Unit_Display", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.unit")
          * initial.valueString = "mm"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_TumorbefallinLaenge_Unit_Code", #text, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.code")
          * initial.valueString = "mm"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_TumorbefallinLaenge_Unit_System", #url, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity.system")
          * initial.valueUri = $unitsofmeasure
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_TumorbefallinLaenge_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_TumorbefallinLaenge_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_TumorbefallinLaenge_status", final)

  // Perineurale Infiltration
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_PerineuraleInfiltration", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10380", #open-choice, "Perineurale Infiltration", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
          * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
          * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_PerineuraleInfiltration_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_PerineuraleInfiltration_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_PerineuraleInfiltration_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_PerineuraleInfiltration_status", final)
  // Tumornachweis in Samenblasen          
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_TumornachweisinSamenblase", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10370", #open-choice, "Tumornachweis in Samenblasen", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")  
          * code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
          * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
          * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_TumornachweisinSamenblase_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_TumornachweisinSamenblase_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_TumornachweisinSamenblase_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_TumornachweisinSamenblase_status", final)
  // Lymphovaskuläre Invasion
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_LymphovaskuläreInvasion", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11206", #open-choice, "Lymphovaskuläre Invasion", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
          * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
          * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_LymphovaskuläreInvasion_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_LymphovaskuläreInvasion_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_LymphovaskuläreInvasion_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_LymphovaskuläreInvasion_status", final)
  // Tumornachweis in periprostatischem Binde- und Fettgewebe
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_TumornachweisInFettgewebe", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10360", #open-choice, "Tumornachweis in periprostatischem Binde- und Fettgewebe", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
          * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
          * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_TumornachweisInFettgewebe_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_TumornachweisInFettgewebe_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_TumornachweisInFettgewebe_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_TumornachweisInFettgewebe_status", final)
  // Intraduktales Karzinom
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_IntraduktalesKarzinom", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.28", #open-choice, "Intraduktales Karzinom", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $sct#1162814007 "Non-infiltrating intraductal carcinoma (morphologic abnormality)"
          * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
          * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_IntraduktalesKarzinom_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $sct#1162814007 "Non-infiltrating intraductal carcinoma (morphologic abnormality)"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_IntraduktalesKarzinom_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_IntraduktalesKarzinom_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_IntraduktalesKarzinom_status", final)
  // ASAP
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_ASAP", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+] 
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.2.11112", #open-choice, "ASAP", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
          * answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
          * answerOption[+].valueCoding = $sct#373068000 "Undetermined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_ASAP_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_ASAP_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_ASAP_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_ASAP_status", final)
  // Begleitende High-grade-PIN
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_HighGradePIN", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+] 
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10390", #open-choice, "Begleitende High-grade-PIN", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code[+] = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy"
          * code[+] = $sct#446711009 "High grade prostatic intraepithelial neoplasia (disorder)"
          * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
          * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_HighGradePIN_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia [Presence] in Specimen by Microscopy"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_HighGradePIN_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_HighGradePIN_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_HighGradePIN_status", final)
  // Granulomatöse Prostatitis
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_GranulomatoeseProstatitis", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)  
        * item[+] 
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10410", #open-choice, "Granulomatöse Prostatitis", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code[+] = $loinc#94665-7 "Granulomatous prostatitis [Presence] in Specimen by Microscopy"
          * code[+] = $sct#61500009 "Granulomatous prostatitis (disorder)"
          * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
          * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
          * answerOption[=].initialSelected = true
          * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_GranulomatoeseProstatitis_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")
          * initial.valueCoding = $loinc#94665-7 "Granulomatous prostatitis [Presence] in Specimen by Microscopy"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_GranulomatoeseProstatitis_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_GranulomatoeseProstatitis_category_section", #22635-7)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_GranulomatoeseProstatitis_status", final)



