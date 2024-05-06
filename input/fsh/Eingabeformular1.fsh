Alias: $FHIR-version = http://hl7.org/fhir/FHIR-version
Alias: $loinc = http://loinc.org
Alias: $questionnaire-itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $sct = http://snomed.info/sct

Instance: 2.16.840.1.113883.3.1937.777.18.27.10--20240426102624
InstanceOf: Questionnaire
Usage: #example
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* url = "https://art-decor.org/fhir/Questionnaire/2.16.840.1.113883.3.1937.777.18.27.10--20240426102624"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.10"
* name = "Eingabeformular_fur_Klinische_Angaben_bei_Stanzbiopsien"
* title = "Eingabeformular für Klinische Angaben bei Stanzbiopsien"
* status = #draft
* experimental = false
* date = "2024-04-26T10:26:24Z"
* effectivePeriod.start = "2024-04-26T10:26:24Z"
* item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10000"
* item.text = "Prostatakarzinome"
* item.type = #group
* item.required = true
* item.repeats = false
* item.readOnly = false
* item.item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10010"
* item.item.code = $loinc#22636-5 "Pathology report relevant history Narrative"
* item.item.text = "Klinische Angaben zur histopathologischen Untersuchung von Stanzbiopsien, TUR und Resektaten"
* item.item.type = #group
* item.item.required = false
* item.item.repeats = false
* item.item.readOnly = false
* item.item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].code = $sct#125156009 "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"
* item.item.item[=].text = "Proben limitiert auswertbar wegen fehlender klinischer Informationen"
* item.item.item[=].type = #boolean
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = true
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10110"
* item.item.item[=].code[+] = $loinc#11450-4 "Problem list - Reported"
* item.item.item[=].code[+] = $loinc#10164-2 "History of Present illness Narrative"
* item.item.item[=].text = "Anamnestische Angaben"
* item.item.item[=].type = #text
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerBoolean = false
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = true
* item.item.item[=].readOnly = false
* item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10120"
* item.item.item[=].code[+] = $loinc#28636-9 "Initial evaluation note"
* item.item.item[=].code[+] = $loinc#90013-4 "Clinical pathology Initial evaluation note"
* item.item.item[=].text = "Vorbefunde"
* item.item.item[=].type = #text
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerBoolean = false
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = true
* item.item.item[=].readOnly = false
* item.item.item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item.item[=].extension[=].valueCoding = UCUM#ng/mL "ng/ml"
* item.item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item.item.item[=].extension[=].valueInteger = 3
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10130"
* item.item.item[=].code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* item.item.item[=].text = "Angaben zur PSA-Serologie"
* item.item.item[=].type = #quantity
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerBoolean = false
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10140"
* item.item.item[=].code = $loinc#75620-5 "TNM clinical staging before treatment panel Cancer"
* item.item.item[=].text = "Klinisches TNM"
* item.item.item[=].type = #text
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10060"
* item.item.item[=].code = $sct#399435001 "Specimen measurable (observable entity)"
* item.item.item[=].text = "Angaben zur Herkunft und Eigenschaften von Proben"
* item.item.item[=].type = #group
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = true
* item.item.item[=].repeats = true
* item.item.item[=].readOnly = true
* item.item.item[=].item[+].linkId = "d7599448-400b-4ce4-a085-8d5efe78aee9"
* item.item.item[=].item[=].code = $sct#372274003 "Sample identification number (observable entity)"
* item.item.item[=].item[=].text = "Proben-ID (-nummer)"
* item.item.item[=].item[=].type = #string
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10070"
* item.item.item[=].item[=].code = $loinc#94738-2 "Biopsy site"
* item.item.item[=].item[=].text = "Lokalisation der Entnahmestelle"
* item.item.item[=].item[=].type = #open-choice
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716909008 "Structure of middle regional part of anterior fibromuscular stroma of right half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716935009 "Structure of apical part of peripheral zone"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716902004 "Structure of basal part of peripheral zone of right half prostate (body structure)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#716903009 "Structure of basal part of peripheral zone of left half prostate (body structure)"
* item.item.item[=].item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10050"
* item.item.item[=].item[=].code = $loinc#44652-6 "Total # of cores Tissue Core"
* item.item.item[=].item[=].text = "Anzahl der Stanzzylinder im Einsendungsgefäß"
* item.item.item[=].item[=].type = #integer
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item.item[=].item[=].extension[=].valueCoding = UCUM#cm "cm"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item.item.item[=].item[=].extension[=].valueInteger = 3
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11208"
* item.item.item[=].item[=].code = $loinc#44619-5 "Length of tissue core(s)"
* item.item.item[=].item[=].text = "Länge der/des Stanzzylinders in cm"
* item.item.item[=].item[=].type = #quantity
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10080"
* item.item.item[=].item[=].code = $loinc#20228-3 "Anatomic part Laterality"
* item.item.item[=].item[=].text = "Seitenangabe"
* item.item.item[=].item[=].type = #choice
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#24028007 "Right (qualifier value)"
* item.item.item[=].item[=].answerOption[+].valueCoding = $sct#7771000 "Left (qualifier value)"