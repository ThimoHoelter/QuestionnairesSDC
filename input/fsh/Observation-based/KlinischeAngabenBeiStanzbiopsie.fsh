Instance: Prostata-EingabeformularfuerKlinischeAngabenBeiStanzbiopsien
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
      * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10110", #text, "Anamnestische Angaben")
      * insert observationExtract
      * insert observationExtract_laboratory_InCategory
      * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
      * code[+] = $loinc#11450-4 "Problem list - Reported"
      * code[+] = $loinc#10164-2 "History of Present illness Narrative"
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false
      * repeats = true

// Frage zu Vorbefunden (Wird nur angezeigt wenn Klinische Angaben auf false)
    * item[+]
      * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10120", #text, "Vorbefunde")
      * insert observationExtract
      * insert observationExtract_laboratory_InCategory
      * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
      * code[+] = $loinc#28636-9 "Initial evaluation note"
      * code[+] = $loinc#90013-4 "Clinical pathology Initial evaluation note"
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false
      * repeats = true

// Frage zur PSA-Serologie (Wird nur angezeigt wenn Klinische Angaben auf false)
    * item[+]
      * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10130", #decimal, "Angaben zur PSA-Serologie")
      * insert observationExtract 
      * insert observationExtract_laboratory_InCategory
      * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
      * insert uunit(ng/mL) 
      * insert maxDecimalPlaces(3) // not supported in LHC
      * code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false

// Frage zu TNM
    * item[+]
      * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10140", #text, "Klinisches TNM")
      * insert observationExtract
      * insert observationExtract_laboratory_InCategory
      * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
      * code = $loinc#75620-5 "TNM clinical staging before treatment panel Cancer"

// Grouper Angaben zur Probe
    * item[+]
      * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10060", #group, "Angaben zur Herkunft und Eigenschaften von Proben")
      * code = $sct#399435001 "Specimen measurable (observable entity)"
      * repeats = true
      * readOnly = true
// ProbenID (meist drei Buchstaben)
      * item[+]
        * insert addRItem("d7599448-400b-4ce4-a085-8d5efe78aee9", #string, "Proben-ID -nummer")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
        * code = $sct#372274003 "Sample identification number (observable entity)"

// Entnahmestelle
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10070", #open-choice, "Lokalisation der Entnahmestelle")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
        * insert itemControl(radio-button)
        * code = $loinc#94738-2 "Biopsy site"
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
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10050", #integer, "Anzahl der Stanzzylinder im Einsendungsgefäß")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
        * code = $loinc#44652-6 "Total number of cores Tissue Core"
// Stanzenlänge in cm
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11208", #integer, "Länge der/des Stanzzylinders in cm") // nicht unterstützt im PathoFinding (nur Quantity, Ratio, String & CodeableConcept)
        * insert observationExtract 
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
        * insert uunit(cm)
        * insert maxDecimalPlaces(3) //not supported in LHC
        * code = $loinc#44619-5 "Length of tissue core(s)"
// Seitenangabe 
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10080", #choice, "Seitenangabe")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
        * insert itemControl(radio-button)
        * code = $loinc#20228-3 "Anatomic part Laterality"
        * answerOption[+].valueCoding = $sct#24028007 "Right (qualifier value)"
        * answerOption[+].valueCoding = $sct#7771000 "Left (qualifier value)"
    
