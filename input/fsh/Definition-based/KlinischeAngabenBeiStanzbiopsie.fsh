Instance: Prostata-EingabeformularKlinischeAngabenStanzbiopsie-Def-Extr
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* url = "https://art-decor.org/fhir/Questionnaire/Prostata_EingabeformularfuerKlinischeAngabenBeiStanzbiopsien"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.10"
* name = "Eingabeformular_fur_Klinische_Angaben_bei_Stanzbiopsien"
* title = "Eingabeformular für Klinische Angaben bei Stanzbiopsien"
* status = #draft
* experimental = false
* date = "2024-04-26T10:26:24Z"
* effectivePeriod.start = "2024-04-26T10:26:24Z"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
* extension[=].valueCode = $resourceType#Practitioner
* subjectType = $resourceType#Patient
// Erster Grouper
* item[+]
  * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10000", #group, "Prostatakarzinome")

// Zweiter Grouper
  * item[+]
    * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10010", #group, "Klinische Angaben zur histopathologischen Untersuchung von Stanzbiopsien TUR und Resektaten") 
    * code = $loinc#22636-5 "Pathology report relevant history Narrative"

// Boolsche Frage ob Klinische Angaben fehlen
    * item[+]
      * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.27", #boolean, "Proben limitiert auswertbar wegen fehlender klinischer Informationen")
      * insert itemControl(radio-button)
      * code = $sct#125156009 "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"

// Frage zu Anamnestische Angaben (Wird nur angezeigt wenn Klinische Angaben auf false)
    * item[+]
      * insert addExtractionContextGrouperNew("ProblemListItem_Anamnese", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition", #Condition)
        * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
        * enableWhen.operator = #=
        * enableWhen.answerBoolean = false
        * repeats = true
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10110", #text, "Anamnestische Angaben", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.note.markdown")
      * item[+]
        * insert addExtractionHiddenItem("Anamnese_Code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.code")
        //* code[+] = $loinc#11450-4 "Problem list - Reported" - .code 0..1
        * initial.valueCoding = $loinc#10164-2 "History of Present illness Narrative"
      * item[+]
        * insert addExtractionHiddenItem("Anamnese_Category", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.category")
        * initial.valueCoding = $Condition-Category#problem-list-item

// Frage zu Vorbefunden (Wird nur angezeigt wenn Klinische Angaben auf false)
    * item[+]
      * insert addExtractionContextGrouperNew("ProblemListItem_Vorbefunde", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition", #Condition)    
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false
      * repeats = true
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10120", #text, "Vorbefunde", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.note.markdown")
      * item[+]
        * insert addExtractionHiddenItem("Vorbefunde_Code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.code")  
        * initial.valueCoding = $loinc#28636-9 "Initial evaluation note"
        //* code[+] = $loinc#90013-4 "Clinical pathology Initial evaluation note"
      * item[+]
        * insert addExtractionHiddenItem("Vorbefunde_Category", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.category")
        * initial.valueCoding = $Condition-Category#problem-list-item

// Frage zur PSA-Serologie (Wird nur angezeigt wenn Klinische Angaben auf false)
    * item[+]
      * insert addExtractionContextGrouperNew("Observation_PSA-Serologie", "http://hl7.org/fhir/Observation#Observation", #Observation)
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10130", #decimal, "Angaben zur PSA-Serologie", "http://hl7.org/fhir/Observation.valueQuantity.value")
        * insert maxDecimalPlaces(3) // not supported in LHC
      * item[+]
        * insert addExtractionHiddenItem("PSA-Serologie_Code", #choice, "http://hl7.org/fhir/Observation#Observation.code")
        * initial.valueCoding = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
      * item[+] // Maßeinheit (Displayname, System und Code werden in die Observation übertragen)
        * insert addExtractionHiddenItem("PSA-Serologie_Unit_Display", #text, "http://hl7.org/fhir/Observation#Observation.valueQuantity.unit")
        * initial.valueString = "ng/mL"
      * item[+]
        * insert addExtractionHiddenItem("PSA-Serologie_Unit_Code", #text, "http://hl7.org/fhir/Observation#Observation.valueQuantity.code")
        * initial.valueString = "ng/mL"
      * item[+]
        * insert addExtractionHiddenItem("PSA-Serologie_Unit_System", #url, "http://hl7.org/fhir/Observation#Observation.valueQuantity.system")
        * initial.valueUri = $unitsofmeasure
      * item[+] // .status 1..1
        * insert addExtractionHiddenItem("PSA-Serologie_Status", #choice, "http://hl7.org/fhir/Observation#Observation.status")
        * initial.valueCoding = #final

// Frage zu TNM
    * item[+]
      * insert addExtractionContextGrouperNew("ProblemListItem_TNM", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition", #Condition)
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10140", #text, "Klinisches TNM", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.note.markdown")
      * item[+]
        * insert addExtractionHiddenItem("TNM_Code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.code")  
        * initial.valueCoding = $loinc#75620-5 "TNM clinical staging before treatment panel Cancer"
        //* code[+] = $loinc#90013-4 "Clinical pathology Initial evaluation note"
      * item[+]
        * insert addExtractionHiddenItem("TNM_Category", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness#Condition.category")
        * initial.valueCoding = $Condition-Category#problem-list-item


// Grouper Angaben zur Probe
    * item[+]
      // Erstellung der Probe(n)
      * insert addExtractionContextTextGrouperNew("2.16.840.1.113883.3.1937.777.18.2.4.10060", "Angaben zur Herkunft und Eigenschaften von Proben", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen", #Specimen)
      * code = $sct#399435001 "Specimen measurable (observable entity)"
      * required = true
      * repeats = true
      * readOnly = true
// ProbenID (meist drei Buchstaben)
      * item[+]
        * insert addExtractionItem("d7599448-400b-4ce4-a085-8d5efe78aee9", #string, "Proben-ID -nummer", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.identifier.value")
        * code = $sct#372274003 "Sample identification number (observable entity)"
        * required = true
      * item[+] // Identifier.type = "PLAC" -  vom Einsender
        * insert addExtractionHiddenItem("ProbenID_type", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.identifier.type")  
        * initial.valueCoding = #PLAC
// Entnahmestelle
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10070", #open-choice, "Lokalisation der Entnahmestelle", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.collection.bodySite.coding")
        * insert itemControl(radio-button)
        * code = $loinc#94738-2 "Biopsy site" 
        * required = true
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

// Anzahl der Stanzzylinder
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10050", #integer, "Anzahl der Stanzzylinder im Einsendungsgefäß", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.container.specimenQuantity.value")  
        * code = $loinc#44652-6 "Total number of cores Tissue Core"
// Stanzenlänge in cm
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11208", #decimal, "Länge der/des Stanzzylinders in cm", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.collection.quantity.value")
        //* insert uunit(cm)
        * insert maxDecimalPlaces(3)
        * required = true
        * code = $loinc#44619-5 "Length of tissue core(s)"
// Seitenangabe 
      * item[+]
        * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10080", #choice, "Seitenangabe", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.collection.bodySite.extension[lateralityQualifier].coding")
        * insert itemControl(radio-button)
        * required = true
        * code = $loinc#20228-3 "Anatomic part Laterality"
        * answerOption[+].valueCoding = $sct#24028007 "Right (qualifier value)"
        * answerOption[+].valueCoding = $sct#7771000 "Left (qualifier value)"

// Notwendige (1..1) Felder innerhalb jeder Probe
      * item[+]
        * insert addExtractionHiddenItem("Proben_type", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.type")
        * initial.valueCoding = $sct#309134005 "Prostate tru-cut biopsy specimen (specimen)"
      * item[+]
        * insert addExtractionHiddenItem("Proben_status", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.status")
        * initial.valueCoding = #available
      * item[+]
        * insert addExtractionHiddenItem("Proben_accIdent", #string, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.accessionIdentifier.value")
        * initial.valueString = "Fallnummer-123456"
      * item[+]
        * insert addExtractionHiddenItem("Proben_Collected_dateTime", #DateTime, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.accessionIdentifier.value")
        * initial.valueDateTime = "2024-01-01"
      * item[+]
        * insert addExtractionHiddenItem("Proben_Collected_dateTime", #string, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.accessionIdentifier.value")
        * initial.valueString = "dummyIdentifier"

