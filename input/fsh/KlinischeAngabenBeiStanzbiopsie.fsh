Instance: EingabeformularfuerKlinischeAngabenBeiStanzbiopsien
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* url = "https://art-decor.org/fhir/Questionnaire/EingabeformularfuerKlinischeAngabenBeiStanzbiopsien"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.10"
* name = "Eingabeformular_fur_Klinische_Angaben_bei_Stanzbiopsien"
* title = "Eingabeformular für Klinische Angaben bei Stanzbiopsien"
* status = #draft
* experimental = false
* date = "2024-04-26T10:26:24Z"
* effectivePeriod.start = "2024-04-26T10:26:24Z"

//Erster Grouper
* item
  * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10000"
  * text = "Prostatakarzinome"
  * type = #group
  * required = true

// Zweiter Grouper
  * item
    * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10010"
    * code = $loinc#22636-5 "Pathology report relevant history Narrative"
    * text = "Klinische Angaben zur histopathologischen Untersuchung von Stanzbiopsien, TUR und Resektaten"
    * type = #group

// Boolsche Frage ob Klinische Angaben fehlen
    * item[+]
      * insert itemControl(#radio-button)
      * linkId = "2.16.840.1.113883.3.1937.777.18.2.27"
      * code = $sct#125156009 "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"
      * text = "Proben limitiert auswertbar wegen fehlender klinischer Informationen"
      * type = #boolean
      * enableBehavior = #all
      * required = true

// Frage zu Anamnestische Angaben (Wird nur angezeigt wenn vorherige Frage auf true)
    * item[+]
      * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10110"
      * code[+] = $loinc#11450-4 "Problem list - Reported"
      * code[+] = $loinc#10164-2 "History of Present illness Narrative"
      * text = "Anamnestische Angaben"
      * type = #text
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false
      * enableBehavior = #all
      * repeats = true

// Frage zu Vorbefunden (Gleiche Bedinung)
    * item[+]
      * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10120"
      * code[+] = $loinc#28636-9 "Initial evaluation note"
      * code[+] = $loinc#90013-4 "Clinical pathology Initial evaluation note"
      * text = "Vorbefunde"
      * type = #text
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false
      * enableBehavior = #all
      * repeats = true

// Frage zur PSA-Serologie (Gleiche Bedinung)
    * item[+]
      * insert uunit(ng/mL)
      * insert maxDecimalPlaces(3)
      * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10130"
      * code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
      * text = "Angaben zur PSA-Serologie"
      * type = #quantity
      * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
      * enableWhen.operator = #=
      * enableWhen.answerBoolean = false
      * enableBehavior = #all

// Frage zu TNM
    * item[+]
      * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10140"
      * code = $loinc#75620-5 "TNM clinical staging before treatment panel Cancer"
      * text = "Klinisches TNM"
      * type = #text
      * enableBehavior = #all

// Grouper Angaben zur Probe
    * item[+]
      * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10060"
      * code = $sct#399435001 "Specimen measurable (observable entity)"
      * text = "Angaben zur Herkunft und Eigenschaften von Proben"
      * type = #group
      * enableBehavior = #all
      * required = true
      * repeats = true
      * readOnly = true
// ProbenID (meist drei Buchstaben)
      * item[+]
        * linkId = "d7599448-400b-4ce4-a085-8d5efe78aee9"
        * code = $sct#372274003 "Sample identification number (observable entity)"
        * text = "Proben-ID (-nummer)"
        * type = #string
        * enableBehavior = #all
        * required = true
// Entnahmestelle
      * item[+]
        * insert itemControl(#radio-button)
        * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10070"
        * code = $loinc#94738-2 "Biopsy site"
        * text = "Lokalisation der Entnahmestelle"
        * type = #open-choice
        * enableBehavior = #all
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
        * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10050"
        * code = $loinc#44652-6 "Total # of cores Tissue Core"
        * text = "Anzahl der Stanzzylinder im Einsendungsgefäß"
        * type = #integer
        * enableBehavior = #all
        * required = true
// Stanzenlänge in cm
      * item[+]
        * insert uunit(cm)
        * insert maxDecimalPlaces(3)
        * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11208"
        * code = $loinc#44619-5 "Length of tissue core(s)"
        * text = "Länge der/des Stanzzylinders in cm"
        * type = #quantity
        * enableBehavior = #all
        * required = true
// Seitenangabe
      * item[+]
        * insert itemControl(#radio-button)
        * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10080"
        * code = $loinc#20228-3 "Anatomic part Laterality"
        * text = "Seitenangabe"
        * type = #choice
        * enableBehavior = #all
        * required = true
        * answerOption[+].valueCoding = $sct#24028007 "Right (qualifier value)"
        * answerOption[+].valueCoding = $sct#7771000 "Left (qualifier value)"
     