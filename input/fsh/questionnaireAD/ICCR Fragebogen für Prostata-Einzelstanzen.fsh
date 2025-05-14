Alias: $FHIR-version = http://hl7.org/fhir/FHIR-version
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: 2.16.840.1.113883.3.1937.777.18.27.17--20250102170615
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2025-04-06T18:22:37Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* extension.valueUrl = "https://art-decor.org/fhir/4.0/public"
* url = "https://art-decor.org/fhir/Questionnaire/2.16.840.1.113883.3.1937.777.18.27.17--20250102170615"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.17"
* version = "0.9"
* name = "ICCR_Fragebogen_fur_Prostata_Einzelstanzen"
* title = "ICCR Fragebogen für Prostata-Einzelstanzen"
* status = #draft
* experimental = false
* date = "2025-04-06T18:22:37Z"
* publisher = "Bundesverband Deutscher Pathologen e.V."
* contact.name = "Bundesverband Deutscher Pathologen e.V."
* contact.telecom.system = #url
* contact.telecom.value = "www.pathologie.de"
* description = "Modell für \"intelligentes\" Formular"
* copyright = "© Copyright 2017-2025 Berufsverband Deutscher Pathologinnen und Pathologen e.V. All rights reserved"
* effectivePeriod.start = "2025-01-02T17:06:15Z"
* code = $sct#721967005 "Tissue pathology biopsy report (record artifact)"
* item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.extension.valueBoolean = false
* item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10000"
* item.text = "Prostatakarzinome"
* item.type = #group
* item.required = true
* item.repeats = false
* item.readOnly = false
* item.item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension.valueBoolean = false
* item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.83"
* item.item[=].code = $sct#116154003 "Patient (person)"
* item.item[=].text = "Patientendaten"
* item.item[=].type = #group
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].readOnly = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.84"
* item.item[=].item[=].definition = "http://hl7.org/fhir/Patient#Patient.name.family"
* item.item[=].item[=].code = $sct#184096005 "Patient surname (observable entity)"
* item.item[=].item[=].text = "Familienname"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension.extension[0].url = "lang"
* item.item[=].item[=].text.extension.extension[=].valueCode = #en-US
* item.item[=].item[=].text.extension.extension[+].url = "content"
* item.item[=].item[=].text.extension.extension[=].valueString = "Family Name"
* item.item[=].item[=].type = #string
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.85"
* item.item[=].item[=].definition = "http://hl7.org/fhir/Patient#Patient.name.given"
* item.item[=].item[=].code = $sct#184095009 "Patient forename (observable entity)"
* item.item[=].item[=].text = "Vorname"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension.extension[0].url = "lang"
* item.item[=].item[=].text.extension.extension[=].valueCode = #en-US
* item.item[=].item[=].text.extension.extension[+].url = "content"
* item.item[=].item[=].text.extension.extension[=].valueString = "Surname"
* item.item[=].item[=].type = #string
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.86"
* item.item[=].item[=].definition = "http://hl7.org/fhir/Patient#Patient.birthDate"
* item.item[=].item[=].code = $sct#184099003 "Date of birth (observable entity)"
* item.item[=].item[=].text = "Geburtsdatum"
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension.extension[0].url = "lang"
* item.item[=].item[=].text.extension.extension[=].valueCode = #en-US
* item.item[=].item[=].text.extension.extension[+].url = "content"
* item.item[=].item[=].text.extension.extension[=].valueString = "Birth date"
* item.item[=].item[=].type = #date
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.87"
* item.item[=].item[=].definition = "http://hl7.org/fhir/Patient#Patient.identifier"
* item.item[=].item[=].code = $loinc#76435-7 "Patient identifier"
* item.item[=].item[=].text = "Patienten-Identifikator"
* item.item[=].item[=].type = #string
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.88"
* item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request.identifier:Placer-ID"
* item.item[=].item[=].code = $loinc#106194-4 "Entity Placer Order Number"
* item.item[=].item[=].text = "Auftragsnummer des Einsenders"
* item.item[=].item[=].type = #string
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.89"
* item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report.identifier:Set-ID"
* item.item[=].item[=].code[0] = $loinc#106201-7 "Accession number [Identifier] Unspecified body region"
* item.item[=].item[=].code[+] = $loinc#106183-7 "Entity Filler Order Number"
* item.item[=].item[=].text = "Eingangs-/Fallnummer"
* item.item[=].item[=].type = #string
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false
* item.item[=].item[=].readOnly = false
* item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension.valueBoolean = false
* item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10210"
* item.item[=].code = $loinc#66117-3 "Prostate Pathology biopsy report"
* item.item[=].text = "Stanzbiopsien"
* item.item[=].type = #group
* item.item[=].required = true
* item.item[=].repeats = false
* item.item[=].readOnly = false
* item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10210-help"
* item.item[=].item[=].text = "Die Berichte über die Prostatabiopsie können auf Proben- oder Fallebene erstellt werden. Die Berichterstattung auf Probenebene kann für jede positive Probenstelle verwendet werden und generiert mehrere Berichte. Die Berichterstattung auf Fallebene fasst alle positiven Probenstellen zusammen und generiert einen einzigen Bericht. So wird es beispielsweise für eine systematische Biopsie an 12 Stellen mit 5 krebspositiven Stellen 5 Berichte auf Probenebene oder 1 Bericht auf Fallebene geben. Die Berichterstattung entweder auf Proben- oder auf Fallebene ist ausreichend, Benutzer können aber auch beide verwenden. Die Wahl der zu verwendenden Berichterstattung hängt von Ihrer örtlichen Praxis oder Ihren institutionellen Präferenzen sowie von regionalen oder nationalen Empfehlungen ab. Bei der Berichterstattung auf Probenebene sind einzelne Berichte spezifisch für jede positive Probenstelle, und die Probenidentifikation und der Standort müssen dokumentiert werden. Bei der Berichterstattung auf Fallebene sollte der Standort aller positiven Probenstellen dokumentiert werden. Gezielte Biopsien müssen von systematischen Biopsien unterschieden werden."
* item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].text.extension.valueMarkdown = "Die Berichte über die Prostatabiopsie können auf Proben- oder Fallebene erstellt werden. Die Berichterstattung auf Probenebene kann für jede positive Probenstelle verwendet werden und generiert mehrere Berichte. Die Berichterstattung auf Fallebene fasst alle positiven Probenstellen zusammen und                             generiert einen einzigen Bericht. So wird es beispielsweise für eine systematische Biopsie an 12 Stellen mit 5 krebspositiven Stellen 5 Berichte auf Probenebene oder 1 Bericht auf Fallebene geben. Die Berichterstattung entweder auf Proben- oder auf Fallebene ist ausreichend, Benutzer können aber auch beide verwenden. Die Wahl der zu verwendenden Berichterstattung hängt                             von Ihrer örtlichen Praxis oder Ihren institutionellen Präferenzen sowie von regionalen oder nationalen Empfehlungen ab. Bei der Berichterstattung auf Probenebene sind einzelne Berichte spezifisch für jede positive Probenstelle, und die Probenidentifikation und der Standort müssen dokumentiert werden. Bei der Berichterstattung auf Fallebene sollte der Standort aller                             positiven Probenstellen dokumentiert werden. Gezielte Biopsien müssen von systematischen Biopsien unterschieden werden."
* item.item[=].item[=].type = #display
* item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11242"
* item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#observation.focus"
* item.item[=].item[=].code[0] = $loinc#66117-3 "Prostate Pathology biopsy report"
* item.item[=].item[=].code[+] = $sct#441817003:116686009=309134005 "Evaluation of biopsy specimen:Has specimen=Prostate tru-cut biopsy sample"
* item.item[=].item[=].code[+] = $sct#271935000 "Biopsy interpretation (observable entity)"
* item.item[=].item[=].code[+] = $sct#309132009 "Prostate biopsy specimen (specimen)"
* item.item[=].item[=].text = "Befunde an Einzelstanzen"
* item.item[=].item[=].type = #group
* item.item[=].item[=].enableBehavior = #all
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = true
* item.item[=].item[=].readOnly = false
* item.item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11242-help"
* item.item[=].item[=].item[=].text = "* Verwendung für jeden einzelnen Stanzzylinder oder * Berichterstattung auf Probenebene kann für jeden positiven Probenort verwendet werden, wodurch mehrere Berichte generiert werden."
* item.item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].text.extension.valueMarkdown = "* Verwendung für jeden einzelnen Stanzzylinder oder\n* [Berichterstattung auf Probenebene ](https://www.iccr-cancer.org/wp-content/uploads/2024/12/ICCR-ProstateCoreBx-Part2-Speclevel-2nd-ed-v2.0-hyperlink.pdf)kann für jeden positiven                                         Probenort verwendet werden, wodurch mehrere Berichte generiert werden."
* item.item[=].item[=].item[=].type = #display
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.29"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper#Observation.hasMember:pathology-finding:Observation.identifier"
* item.item[=].item[=].item[=].code[0] = $loinc#80398-1 "Unique identifier for Current sample"
* item.item[=].item[=].item[=].code[+] = $sct#372274003 "Sample identification number (observable entity)"
* item.item[=].item[=].item[=].text = "Proben-ID (-bezeichnung)"
* item.item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].text.extension.extension[0].url = "lang"
* item.item[=].item[=].item[=].text.extension.extension[=].valueCode = #en-US
* item.item[=].item[=].item[=].text.extension.extension[+].url = "content"
* item.item[=].item[=].item[=].text.extension.extension[=].valueString = "Specimen ID"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.29-help"
* item.item[=].item[=].item[=].item.text = "Bei der Berichterstattung auf Probenebene sind die einzelnen Berichte spezifisch für jeden positiven Probenort und die Probenidentifikation und die Entnahmestelle müssen dokumentiert werden."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Bei der Berichterstattung auf Probenebene sind die einzelnen Berichte spezifisch für jeden positiven Probenort und die Probenidentifikation und die Entnahmestelle müssen dokumentiert werden."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11245"
* item.item[=].item[=].item[=].definition = "medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper#Observation.hasMember:pathology-finding:Observation.identifier"
* item.item[=].item[=].item[=].code = urn:oid:2.16.840.113883.6.1#94736-6 "Tissue block identifier"
* item.item[=].item[=].item[=].text = "Block-ID"
* item.item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].text.extension.extension[0].url = "lang"
* item.item[=].item[=].item[=].text.extension.extension[=].valueCode = #en-US
* item.item[=].item[=].item[=].text.extension.extension[+].url = "content"
* item.item[=].item[=].item[=].text.extension.extension[=].valueString = "Block ID"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11243"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.collection.bodySite"
* item.item[=].item[=].item[=].code[0] = $loinc#94738-2 "Biopsy site"
* item.item[=].item[=].item[=].code[+] = $sct#396991001 "Biopsy site (observable entity)"
* item.item[=].item[=].item[=].text = "Lokalisation der Entnahmestelle"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14004"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm "mm"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item.item[=].item[=].item[=].extension[=].valueInteger = 2
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11244"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#44619-5 "Length of tissue core(s)"
* item.item[=].item[=].item[=].text = "Länge der Stanzzylinder"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10240"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#44652-6 "Total number of cores in Tissue core"
* item.item[=].item[=].item[=].text = "Anzahl der Stanzzylinder im Einsendungsgefäß"
* item.item[=].item[=].item[=].type = #integer
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $sct#911753521000004108 "Histologic type of primary malignant neoplasm of prostate (observable entity)"
* item.item[=].item[=].item[=].text = "Histologischer Tumortyp"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.18018--20241204150246"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.49-help"
* item.item[=].item[=].item[=].item.text = "Die überwiegende Mehrheit (> 95 %) der Prostatakrebserkrankungen sind azinäre Adenokarzinome. Andere Karzinomtypen und -subtypen sind seltener, müssen aber bei Vorhandensein erfasst werden, da einige, wie das duktale Adenokarzinom, das sarkomatoide Karzinom und das pleomorphe Riesenzellkarzinom, eine deutlich schlechtere Prognose haben. Der Tumortyp sollte gemäß der WHO-Klassifikation 2022 zugeordnet werden, und Mischungen verschiedener Typen sollten angegeben werden .Bei einigen Prostatakarzinomsubtypen, wie dem duktalen und dem siegelringzellartigen Karzinom, ist zur Diagnosestellung eine vollständige Untersuchung des resezierten Tumors mit prozentualen Grenzwerten erforderlich. Daher wird bei der Biopsie die Verwendung einer beschreibenden Diagnose empfohlen, z. B. „Adenokarzinom mit duktalen Merkmalen“. Subtypen des Prostatakarzinoms werden oft in Kombination mit azinärem Adenokarzinom identifiziert, und in solchen Fällen sollte der Tumortyp entsprechend dem/den vorhandenen Subtyp(en) klassifiziert werden. Informationen zum histologischen Tumortyp können je nach lokaler Praxis auf Probenebene oder auf Fallebene aufgezeichnet werden. Der Antworttyp „Kein Hinweis auf Primärtumor“ sollte nur verwendet werden, wenn die Berichterstattung auf Probenebene erfolgt."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Die überwiegende Mehrheit (> 95 %) der Prostatakrebserkrankungen sind azinäre Adenokarzinome. Andere Karzinomtypen und -subtypen sind seltener, müssen aber bei Vorhandensein erfasst werden, da einige, wie das duktale Adenokarzinom, das sarkomatoide Karzinom und das pleomorphe                                     Riesenzellkarzinom, eine deutlich schlechtere Prognose haben. Der Tumortyp sollte gemäß der WHO-Klassifikation 2022 zugeordnet werden, und Mischungen verschiedener Typen sollten angegeben werden .Bei einigen Prostatakarzinomsubtypen, wie dem duktalen und dem siegelringzellartigen Karzinom, ist zur Diagnosestellung eine vollständige Untersuchung des resezierten                                     Tumors mit prozentualen Grenzwerten erforderlich. Daher wird bei der Biopsie die Verwendung einer beschreibenden Diagnose empfohlen, z. B. „Adenokarzinom mit duktalen Merkmalen“. Subtypen des Prostatakarzinoms werden oft in Kombination mit azinärem Adenokarzinom identifiziert, und in solchen Fällen sollte der Tumortyp entsprechend dem/den vorhandenen Subtyp(en)                                     klassifiziert werden. Informationen zum histologischen Tumortyp können je nach lokaler Praxis auf Probenebene oder auf Fallebene aufgezeichnet werden. Der Antworttyp „Kein Hinweis auf Primärtumor“ sollte nur verwendet werden, wenn die Berichterstattung auf Probenebene erfolgt."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* item.item[=].item[=].item[=].text = "Histologischer Typ ICD-O-3"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#74964007 "Andere, bitte spezifizieren"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14008|2018-02-10T00:00:00"
* item.item[=].item[=].item[=].answerOption[0].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8140/3 "Azinäres Adenokarzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8490/3 "Siegelringzelliges Adenokarzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8572/3 "Karzinom mit spindelzelliger Differenzierung"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8148/2 "Hochgradige PIN"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8500/3 "Duktales Adenokarzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8070/3 "Plattenepithelkarzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8560/3 "Adenosquamöses Karzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8147/3 "Adenoid-zystisches (Basalzell-) Karzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8574/3 "Neuroendokrin differenziertes Adenokarzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8935/1 "Stromatumor mit unklarem malignen Potential"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8935/3 "Stromasarkom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8440/0 "Zystadenom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8140/3 "PIN-ähnliches azinäres Adenokarzinom"
* item.item[=].item[=].item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.5#8500/2 "Intraduktales Karzinom"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10260"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* item.item[=].item[=].item[=].text = "Morphologie Freitext"
* item.item[=].item[=].item[=].type = #text
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.54"
* item.item[=].item[=].item[=].code[0] = $loinc#35266-6 "Gleason score in Specimen Qualitative"
* item.item[=].item[=].item[=].code[+] = $sct#1850001000004102 "Histologic grade of primary malignant neoplasm (observable entity)"
* item.item[=].item[=].item[=].text = "Histologic grade / Gleason Score (ISUP 2014, WHO 2016)"
* item.item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].text.extension.valueMarkdown = "Histologic grade / Gleason Score (ISUP 2014, WHO 2016)"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.54-help"
* item.item[=].item[=].item[=].item[=].text = "Das Gleason-Bewertungssystem ist die Grundlage für die Bewertung von Prostatakarzinomen. Der Gleason-Score wird traditionell durch Addition der beiden vorherrschenden Gleason-Muster oder durch Verdoppelung des Musters in Fällen mit einheitlichem Grad ermittelt. Dies wurde in der Revision 2005 der International Society of Urological Pathology (ISUP) geändert, indem immer der höchste Grad in den Gleason-Score von Nadelbiopsien aufgenommen wird, unabhängig von seiner Menge. Auf der ISUP-Konsenskonferenz 2014 wurde das Gleason-System weiter modifiziert und konzentrierte sich hauptsächlich auf die Gleason-Muster. Es wurde entschieden, dass das Gleason-Muster 4 verschmolzene oder schlecht geformte Drüsen, Glomerulationen und alle kribriformen Muster von azinären Adenokarzinomen umfassen sollte. Weitere Verfeinerungen wurden auf der ISUP-Konsenskonferenz 2019 und im „Weißbuch“ der Genitourinary Pathology Society (GUPS) 2019 vorgenommen, hauptsächlich in Bezug auf die Berichterstattung über Gleason-Scores und deren Komponenten.Viele dieser Änderungen wurden in die 4. und 5. Ausgabe der WHO-Klassifikation aufgenommen. Der Übersichtlichkeit halber sollten immer sowohl der Gleason-Score als auch der WHO/ISUP-Grad angegeben werden. Bei der Berichterstattung auf Probenebene wird für jede positive Probenstelle ein separater Grad angegeben. Bei gezielten Biopsien sollte der Grad für jede positive Läsion angegeben werden. Gelegentlich werden mehrere Stanzen aus einer Zielläsion entnommen und ein Gesamtgrad (globaler Grad) angegeben."
* item.item[=].item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item[=].text.extension.valueMarkdown = "Das Gleason-Bewertungssystem ist die Grundlage für die Bewertung von Prostatakarzinomen. Der Gleason-Score wird traditionell durch Addition der beiden vorherrschenden Gleason-Muster oder durch Verdoppelung des Musters in Fällen mit einheitlichem Grad ermittelt. Dies wurde in der Revision 2005                                     der International Society of Urological Pathology (ISUP) geändert, indem immer der höchste Grad in den Gleason-Score von Nadelbiopsien aufgenommen wird, unabhängig von seiner Menge. Auf der ISUP-Konsenskonferenz 2014 wurde das Gleason-System weiter modifiziert und konzentrierte sich hauptsächlich auf die Gleason-Muster. Es wurde entschieden, dass das                                     Gleason-Muster 4 verschmolzene oder schlecht geformte Drüsen, Glomerulationen und alle kribriformen Muster von azinären Adenokarzinomen umfassen sollte. Weitere Verfeinerungen wurden auf der ISUP-Konsenskonferenz 2019 und im „Weißbuch“ der Genitourinary Pathology Society (GUPS) 2019 vorgenommen, hauptsächlich in Bezug auf die Berichterstattung über                                     Gleason-Scores und deren Komponenten.Viele dieser Änderungen wurden in die 4. und 5. Ausgabe der WHO-Klassifikation aufgenommen.\n                                 \nDer Übersichtlichkeit halber sollten immer sowohl der Gleason-Score als auch der WHO/ISUP-Grad angegeben werden. Bei der Berichterstattung auf Probenebene wird für jede positive Probenstelle ein separater Grad angegeben. Bei gezielten Biopsien sollte der Grad für jede positive Läsion angegeben werden. Gelegentlich werden mehrere Stanzen aus einer Zielläsion                                     entnommen und ein Gesamtgrad (globaler Grad) angegeben."
* item.item[=].item[=].item[=].item[=].type = #display
* item.item[=].item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
* item.item[=].item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].item[=].code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* item.item[=].item[=].item[=].item[=].text = "Primäres Gleason Muster (Epstein 2005)"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14011--20180210000000"
* item.item[=].item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
* item.item[=].item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].item[=].code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* item.item[=].item[=].item[=].item[=].text = "Sekundäres (höchstes übrigbleibendes) Gleason Muster (Epstein 2005)"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14011--20180210000000"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11200"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code[0] = $loinc#94734-1 "Prostate cancer grade group"
* item.item[=].item[=].item[=].code[+] = $sct#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* item.item[=].item[=].item[=].text = "Gradinggruppe nach ISUP 2014/WHO 2016"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14009"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "Prozent"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.53"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $sct#1287180006 "Percentage of primary malignant neoplasm of prostate with Gleason histologic pattern 4 (observable entity)"
* item.item[=].item[=].item[=].text = "Prozentualer Anteil Gleasonmuster 4"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
* item.item[=].item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#1255775000 "Muster 4"
* item.item[=].item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
* item.item[=].item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#1255775000 "Muster 4"
* item.item[=].item[=].item[=].enableBehavior = #any
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.53-help"
* item.item[=].item[=].item[=].item.text = "Die ISUP-Konsenskonferenz 2019 und das GUPS-Weißbuch 2019 empfahlen zudem, den Prozentsatz des Gleason-Musters 4 in Fällen mit WHO/ISUP-Grad 2 oder 3 anzugeben. Der Grund dafür besteht darin, anzuzeigen, ob der Tumor an die untere oder obere Grenze des Gleason-Scores 7 grenzt. In einigen Protokollen werden Tumoren mit Gleason-Score 7 und niedrigem oder ≤ 10 % Muster 4 für die aktive Überwachung in Betracht gezogen. Da diese Informationen klinisch hauptsächlich zur aktiven Überwachung verwendet wurden, ist die Angabe des Prozentsatzes des Gleason-Musters 4 derzeit nur für Tumoren mit Gleason 3+4 erforderlich."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Die ISUP-Konsenskonferenz 2019 und das GUPS-Weißbuch 2019 empfahlen zudem, den Prozentsatz des Gleason-Musters 4 in Fällen mit WHO/ISUP-Grad 2 oder 3 anzugeben. Der Grund dafür besteht darin, anzuzeigen, ob der Tumor an die untere oder obere Grenze des Gleason-Scores 7 grenzt. In einigen                                     Protokollen werden Tumoren mit Gleason-Score 7 und niedrigem oder ≤ 10 % Muster 4 für die aktive Überwachung in Betracht gezogen. Da diese Informationen klinisch hauptsächlich zur aktiven Überwachung verwendet wurden, ist die Angabe des Prozentsatzes des Gleason-Musters 4 derzeit nur für Tumoren mit Gleason 3+4 erforderlich."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "Prozent"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11144"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area"
* item.item[=].item[=].item[=].text = "Prozentualer Anteil Gleasonmuster 5"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
* item.item[=].item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#1255776004 "Muster 5"
* item.item[=].item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
* item.item[=].item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#1255776004 "Muster 5"
* item.item[=].item[=].item[=].enableBehavior = #any
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11144-help"
* item.item[=].item[=].item[=].item.text = "Der Prozentsatz des Gleason-Musters 4 und 5 wird von einigen Pathologen für Tumoren mit Gleason-Score 4+3 und höher angegeben, aber diese Information wird bei klinischen Entscheidungen nicht häufig verwendet. Dieses Element ist daher optional."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Der Prozentsatz des Gleason-Musters 4 und 5 wird von einigen Pathologen für Tumoren mit Gleason-Score 4+3 und höher angegeben, aber diese Information wird bei klinischen Entscheidungen nicht häufig verwendet. Dieses Element ist daher optional."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.62"
* item.item[=].item[=].item[=].code = $sct#1287162002 "Neoplasm growth pattern (observable entity)"
* item.item[=].item[=].item[=].text = "Spezielle Wachstumsmuster"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.62-help"
* item.item[=].item[=].item[=].item[=].text = "Mehrere Studien haben die Bedeutung des invasiven kribriformen Karzinoms (ICC) und des intraduktalen Karzinoms der Prostata (IDC-P) als unabhängige ungünstige Prognosefaktoren gezeigt. Das invasive kribriforme Karzinom (ICC) ist eine der grundlegenden Architekturen für das Gleason-Muster 4. Das Vorhandensein einer luminalen Nekrose stuft die kribriforme Drüse auf das Gleason-Muster 5 hoch. Unter den Gleason-Muster-4-Architekturen wurde gezeigt, dass die kribriforme Morphologie mit einer höheren biochemischen Rezidivrate oder einer schlechteren Überlebensrate nach radikaler Prostatektomie oder Strahlentherapie verbunden ist. Viele dieser Ergebnisse wurden bei Prostatakrebs mit Gleason-Score 7 gezeigt"
* item.item[=].item[=].item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item[=].text.extension.valueMarkdown = "Mehrere Studien haben die Bedeutung des invasiven kribriformen Karzinoms (ICC) und des intraduktalen Karzinoms der Prostata (IDC-P) als unabhängige ungünstige Prognosefaktoren gezeigt. Das invasive kribriforme Karzinom (ICC) ist eine der grundlegenden Architekturen für das Gleason-Muster 4. Das                                     Vorhandensein einer luminalen Nekrose stuft die kribriforme Drüse auf das Gleason-Muster 5 hoch. Unter den Gleason-Muster-4-Architekturen wurde gezeigt, dass die kribriforme Morphologie mit einer höheren biochemischen Rezidivrate oder einer schlechteren Überlebensrate nach radikaler Prostatektomie oder Strahlentherapie verbunden ist. Viele dieser Ergebnisse                                     wurden bei Prostatakrebs mit Gleason-Score 7 gezeigt"
* item.item[=].item[=].item[=].item[=].type = #display
* item.item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.63"
* item.item[=].item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].item[=].code = $sct#1279782006 "Histologic architectural pattern in primary malignant neoplasm of prostate (observable entity)"
* item.item[=].item[=].item[=].item[=].text = "IDC-P und/oder ICC"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item[=].answerOption[0].valueString = "Unbestimmt"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueString = "Nicht identifiziert"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueString = "Vorhanden"
* item.item[=].item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.28"
* item.item[=].item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].item[=].code = $sct#1178981001 "Presence of direct invasion by primary carcinoma of prostate to prostatic duct structure (observable entity)"
* item.item[=].item[=].item[=].item[=].text = "Intraduktales Karzinom"
* item.item[=].item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.63"
* item.item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].item[=].item[=].enableWhen.answerCoding = $sct#52101004 "Vorhanden"
* item.item[=].item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12"
* item.item[=].item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.64"
* item.item[=].item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].item[=].code = $sct#30156004 "Cribriform carcinoma (morphologic abnormality)"
* item.item[=].item[=].item[=].item[=].text = "Invasives kribriformes Karzinom"
* item.item[=].item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].item[=].enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.2.11200"
* item.item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#1279714001 "Gradinggruppe 2"
* item.item[=].item[=].item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.2.11200"
* item.item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#1279716004 "Gradinggruppe 3"
* item.item[=].item[=].item[=].item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.2.11200"
* item.item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item.item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = $sct#1525791000004100 "Gradinggruppe 4"
* item.item[=].item[=].item[=].item[=].enableBehavior = #any
* item.item[=].item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12--20190811122751"
* item.item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension.valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.30"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code[0] = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
* item.item[=].item[=].item[=].code[+] = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
* item.item[=].item[=].item[=].text = "Verhältnis positiver zu allen Stanzen"
* item.item[=].item[=].item[=].type = #string
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.30-help"
* item.item[=].item[=].item[=].item.text = "Die Anzahl der Stanzbiopsien, die positiv auf Krebs getestet wurden, und die lineare Ausdehnung des Krebses in den Stanzen korrelieren mit Tumorvolumen, postoperativem Stadium und Ergebnis.74-76 Die Anzahl der positiven Stanzen sollte gemeldet werden, kann aber aufgrund der Fragmentierung schwierig zu ermitteln sein, wenn mehrere Stanzen zusammen eingesandt wurden. Die Anzahl der positiven Stanzen sollte nicht größer sein als die Anzahl der entnommenen Stanzen (wie in Teil 1 „Leitfaden zur Meldung von klinischen Informationen/Probeneingängen“ angegeben). Eine ortsspezifische Kennzeichnung und die Einreichung einer einzelnen Stanze erleichtern die Beurteilung des Krebsausmaßes."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Die Anzahl der Stanzbiopsien, die positiv auf Krebs getestet wurden, und die lineare Ausdehnung des Krebses in den Stanzen korrelieren mit Tumorvolumen, postoperativem Stadium und Ergebnis.74-76 Die Anzahl der positiven Stanzen sollte gemeldet werden, kann aber aufgrund der Fragmentierung                                     schwierig zu ermitteln sein, wenn mehrere Stanzen zusammen eingesandt wurden. Die Anzahl der positiven Stanzen sollte nicht größer sein als die Anzahl der entnommenen Stanzen (wie in Teil 1 „Leitfaden zur Meldung von klinischen Informationen/Probeneingängen“ angegeben). Eine ortsspezifische Kennzeichnung und die Einreichung einer einzelnen Stanze erleichtern die                                     Beurteilung des Krebsausmaßes."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "Prozent"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10330"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
* item.item[=].item[=].item[=].text = "ProzentualerTumoranteil"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm "mm"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10340"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#44618-7 "Total linear mm of carcinoma"
* item.item[=].item[=].item[=].text = "Tumorbefall für befallene Stanze in Länge in mm"
* item.item[=].item[=].item[=].type = #quantity
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10340-help"
* item.item[=].item[=].item[=].item.text = "Die lineare Ausdehnung ist ein zentrales Datenelement und kann entweder als Prozentsatz des Krebses oder als Millimeter (mm) Krebslänge in jeder Stanze oder als zusammengesetztes Maß der linearen Ausdehnung (mm oder Prozentsatz) in mehreren oder fragmentierten Stanzen in einer Probe erfasst werden. Eine Methode zur Berechnung des Krebsprozentsatzes besteht darin, die Länge des Krebses zu messen und durch die Gesamtlänge des Prostatagewebes zu teilen. Die Methoden zur Meldung von diskontinuierlichem Krebs sind nach wie vor umstritten. Die meisten (78%) diskontinuierlichen Tumorherde in der Biopsie entsprachen einem einzelnen Tumorherd bei radikaler Prostatektomie und können einschließlich des dazwischenliegenden Stromas als ein kontinuierlicher Tumor gemessen werden. Diese Methode führt jedoch in einer Minderheit der Fälle auch zu einer Überschätzung der Tumorausdehnung. Ob dazwischenliegendes gutartiges Gewebe in die Ausdehnungsmessung einbezogen oder davon abgezogen wird, kann die Eignung für eine aktive Überwachung bestimmen. Ein Patient mit Krebs des WHO/ISUP-Grades 1 in nicht mehr als drei Stanzen kann ein Kandidat für eine aktive Überwachung sein. In einigen Protokollen ist ein Patient nicht für die aktive Überwachung geeignet, wenn eine positiver Stanze zu mehr als 50 % vom Tumor befallen ist. In einem solchen Fall wird empfohlen, das Tumorausmaß eines diskontinuierlichen Krebses sowohl durch Einbeziehung als auch durch Abzug des dazwischenliegenden gutartigen Gewebes anzugeben. Beispielsweise befinden sich in einer 20 mm großen Stanze zwei 1 mm große diskontinuierliche Krebsherde des WHO/ISUP-Grades 1, die sich über eine Distanz von 12 mm (60 % lineare Ausdehnung) erstrecken und 1+1 mm (10 % lineare Ausdehnung) messen. Da die meisten aktiven Überwachungsprotokolle einen Cut-off verwenden, der durch das größte Ausmaß des Stanzenbefalls bestimmt wird, ist die Dokumentation der größten linearen Ausdehnung und/oder Länge des vom Karzinom befallenen Gewebes für die Berichterstattung auf Fallebene ausreichend."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Die lineare Ausdehnung ist ein zentrales Datenelement und kann entweder als Prozentsatz des Krebses oder als Millimeter (mm) Krebslänge in jeder Stanze oder als zusammengesetztes Maß der linearen Ausdehnung (mm oder Prozentsatz) in mehreren oder fragmentierten Stanzen in einer Probe erfasst                                     werden. Eine Methode zur Berechnung des Krebsprozentsatzes besteht darin, die Länge des Krebses zu messen und durch die Gesamtlänge des Prostatagewebes zu teilen. Die Methoden zur Meldung von diskontinuierlichem Krebs sind nach wie vor umstritten. Die meisten (78%) diskontinuierlichen Tumorherde in der Biopsie entsprachen einem einzelnen Tumorherd bei radikaler                                     Prostatektomie und können einschließlich des dazwischenliegenden Stromas als ein kontinuierlicher Tumor gemessen werden. Diese Methode führt jedoch in einer Minderheit der Fälle auch zu einer Überschätzung der Tumorausdehnung. Ob dazwischenliegendes gutartiges Gewebe in die Ausdehnungsmessung einbezogen oder davon abgezogen wird, kann die Eignung für eine aktive                                     Überwachung bestimmen. Ein Patient mit Krebs des WHO/ISUP-Grades 1 in nicht mehr als drei Stanzen kann ein Kandidat für eine aktive Überwachung sein. In einigen Protokollen ist ein Patient nicht für die aktive Überwachung geeignet, wenn eine positiver Stanze zu mehr als 50 % vom Tumor befallen ist. In einem solchen Fall wird empfohlen, das Tumorausmaß eines                                     diskontinuierlichen Krebses sowohl durch Einbeziehung als auch durch Abzug des dazwischenliegenden gutartigen Gewebes anzugeben. Beispielsweise befinden sich in einer 20 mm großen Stanze zwei 1 mm große diskontinuierliche Krebsherde des WHO/ISUP-Grades 1, die sich über eine Distanz von 12 mm (60 % lineare Ausdehnung) erstrecken und 1+1 mm (10 % lineare                                     Ausdehnung) messen. Da die meisten aktiven Überwachungsprotokolle einen Cut-off verwenden, der durch das größte Ausmaß des Stanzenbefalls bestimmt wird, ist die Dokumentation der größten linearen Ausdehnung und/oder Länge des vom Karzinom befallenen Gewebes für die Berichterstattung auf Fallebene ausreichend."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10360"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code[0] = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
* item.item[=].item[=].item[=].code[+] = $sct#385009003 "Presence of direct invasion by primary malignant neoplasm of prostate to periprostatic tissue (observable entity)"
* item.item[=].item[=].item[=].text = "Extraprostatische Ausbreitung"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = true
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12--20190811122751"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10360-help"
* item.item[=].item[=].item[=].item.text = "Die extraprostatische Ausdehnung (EPE) ist mittlerweile die anerkannte Terminologie und ersetzt frühere mehrdeutige Begriffe wie Kapselpenetration, Perforation oder Invasion.Bei Proben aus einer radikalen Prostatektomie ist EPE ein unabhängiger Prognoseindikator für ein erhöhtes Rezidivrisiko nach einer radikalen Prostatektomie und wichtig für die Zuweisung der Kategorie T der Union for International Cancer Control (UICC)/American Joint Committee on Cancer (AJCC). Es gibt nur begrenzte Daten speziell zur Bedeutung von EPE bei Stanzbiopsien, da es relativ selten ist; es kann jedoch gelegentlich auftreten und sollte gemeldet werden, wenn.vorhanden. Eine Studie zeigte, dass EPE bei Biopsien stark mit aggressiven Krankheitsmerkmalen korreliert.85 Bei Stanzbiopsien wird EPE als mit Adipozyten vermischter Tumor definiert, normalerweise am Ende eines Stanzzylinders. „Unbestimmt“ sollte sparsam verwendet werden, kann aber in Fällen anwendbar sein, in denen der Tumor Bindegewebe ohne direkte Beteiligung von Adipozyten betrifft. Es wird empfohlen, die Stelle eines vorhandenen EPE aufzuzeichnen, da diese Information für die Korrelation mit MRT-Ergebnissen nützlich ist und dem Urologen oder Strahlentherapeuten bei den technischen Aspekten der Behandlungsplanung helfen kann."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Die extraprostatische Ausdehnung (EPE) ist mittlerweile die anerkannte Terminologie und ersetzt frühere mehrdeutige Begriffe wie Kapselpenetration, Perforation oder Invasion.Bei Proben aus einer radikalen Prostatektomie ist EPE ein unabhängiger Prognoseindikator für ein erhöhtes Rezidivrisiko                                     nach einer radikalen Prostatektomie und wichtig für die Zuweisung der Kategorie T der Union for International Cancer Control (UICC)/American Joint Committee on Cancer (AJCC). Es gibt nur begrenzte Daten speziell zur Bedeutung von EPE bei Stanzbiopsien, da es relativ selten ist; es kann jedoch gelegentlich auftreten und sollte gemeldet werden, wenn.vorhanden.                                     Eine Studie zeigte, dass EPE bei Biopsien stark mit aggressiven Krankheitsmerkmalen korreliert.85 Bei Stanzbiopsien wird EPE als mit Adipozyten vermischter Tumor definiert, normalerweise am Ende eines Stanzzylinders. „Unbestimmt“ sollte sparsam verwendet werden, kann aber in Fällen anwendbar sein, in denen der Tumor Bindegewebe ohne direkte Beteiligung von                                     Adipozyten betrifft. Es wird empfohlen, die Stelle eines vorhandenen EPE aufzuzeichnen, da diese Information für die Korrelation mit MRT-Ergebnissen nützlich ist und dem Urologen oder Strahlentherapeuten bei den technischen Aspekten der Behandlungsplanung helfen kann."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10370"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
* item.item[=].item[=].item[=].text = "Tumornachweis in Samenblasen"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12--20190811122751"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10370-help"
* item.item[=].item[=].item[=].item.text = "Eine Invasion der Samenbläschen (SVI) wird bei Stanzbiopsien nur selten festgestellt, ihr Fehlen muss daher nicht explizit festgestellt werden. Liegt jedoch eine Invasion der Samenbläschen/Ejakulationsgänge vor, sollte dies dokumentiert werden und es gelten die folgenden Anmerkungen: Unter Samenbläscheninvasion (SVI) versteht man die Beteiligung der Muskelwand des extraprostatischen Anteils der Samenbläschen. Wenn mögliches Samenbläschengewebe vorhanden ist (entweder unbeabsichtigt oder absichtlich, wie bei einer gezielten Biopsie) und von einem Karzinom befallen ist, kann dies von Bedeutung sein, da es darauf hinweist, dass der Tumor im UICC/AJCC-Staging-System T3b sein könnte. Allerdings ist die Beurteilung von SVI bei Nadelbiopsieproben problematisch, da es unmöglich ist, zuverlässig zwischen extraprostatischen Samenbläschen und intraprostatischen Samenbläschen- oder Ejakulationsganggewebe zu unterscheiden. Deshalb ist es wichtig, eine Invasion der beiden letztgenannten Strukturen nicht überzuinterpretieren als SVI, da ihre Befall durch einen Tumor keine T3b-Erkrankung darstellt. Sofern es sich nicht um eine gezielte Samenbläschenbiopsie handelt, wird empfohlen, eine Tumorbeteiligung solcher Strukturen bei einer Stanzbiopsie als „Samenbläschen-/Ejakulationsganginvasion“ und nicht als SVI zu melden."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Eine Invasion der Samenbläschen (SVI) wird bei Stanzbiopsien nur selten festgestellt, ihr Fehlen muss daher nicht explizit festgestellt werden. Liegt jedoch eine Invasion der Samenbläschen/Ejakulationsgänge vor, sollte dies dokumentiert werden und es gelten die folgenden Anmerkungen: Unter                                     Samenbläscheninvasion (SVI) versteht man die Beteiligung der Muskelwand des extraprostatischen Anteils der Samenbläschen. Wenn mögliches Samenbläschengewebe vorhanden ist (entweder unbeabsichtigt oder absichtlich, wie bei einer gezielten Biopsie) und von einem Karzinom befallen ist, kann dies von Bedeutung sein, da es darauf hinweist, dass der Tumor im                                     UICC/AJCC-Staging-System T3b sein könnte. Allerdings ist die Beurteilung von SVI bei Nadelbiopsieproben problematisch, da es unmöglich ist, zuverlässig zwischen extraprostatischen Samenbläschen und intraprostatischen Samenbläschen- oder Ejakulationsganggewebe zu unterscheiden. Deshalb ist es wichtig, eine Invasion der beiden letztgenannten Strukturen nicht                                     überzuinterpretieren als SVI, da ihre Befall durch einen Tumor keine T3b-Erkrankung darstellt. Sofern es sich nicht um eine gezielte Samenbläschenbiopsie handelt, wird empfohlen, eine Tumorbeteiligung solcher Strukturen bei einer Stanzbiopsie als „Samenbläschen-/Ejakulationsganginvasion“ und nicht als SVI zu melden."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11206"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
* item.item[=].item[=].item[=].text = "Lymphovaskuläre Invasion"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11206-help"
* item.item[=].item[=].item[=].item.text = "Eine lymphovaskuläre Invasion (LVI) wird in Stanzbiopsien selten festgestellt, daher muss ihr Fehlen nicht explizit festgestellt werden. Wenn jedoch eine LVI vorhanden ist, sollte sie aufgezeichnet werden. Eine Invasion von Lymph- oder Blutgefäßen (d. h. dünnwandige, mit Endothel ausgekleidete Räume) wird in Stanzbiopsieproben selten festgestellt, und es gibt nur wenige veröffentlichte Daten zu ihrer Bedeutung, insbesondere in Bezug auf Prostata-Stanzbiopsien. Es gibt jedoch gute Beweise dafür, dass eine bei einer radikalen Prostatektomie festgestellte LVI ein unabhängiger Prognosefaktor ist, der mit ungünstiger Pathologie, häufigerem Wiederauftreten, Metastasierung und schlechterem Ausgang, einschließlich bei Patienten mit Strahlentherapie, verbunden ist. Wenn also eine LVI in einer Stanzbiopsie festgestellt wird, kann sie durchaus von Bedeutung sein, und ihr Vorhandensein sollte aufgezeichnet werden. Das Vorhandensein einer LVI hat keinen Einfluss auf die Zuweisung der UICC/AJCC-Kategorie T."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Eine lymphovaskuläre Invasion (LVI) wird in Stanzbiopsien selten festgestellt, daher muss ihr Fehlen nicht explizit festgestellt werden. Wenn jedoch eine LVI vorhanden ist, sollte sie aufgezeichnet werden. Eine Invasion von Lymph- oder Blutgefäßen (d. h. dünnwandige, mit Endothel ausgekleidete                                     Räume) wird in Stanzbiopsieproben selten festgestellt, und es gibt nur wenige veröffentlichte Daten zu ihrer Bedeutung, insbesondere in Bezug auf Prostata-Stanzbiopsien. Es gibt jedoch gute Beweise dafür, dass eine bei einer radikalen Prostatektomie festgestellte LVI ein unabhängiger Prognosefaktor ist, der mit ungünstiger Pathologie, häufigerem Wiederauftreten,                                     Metastasierung und schlechterem Ausgang, einschließlich bei Patienten mit Strahlentherapie, verbunden ist. Wenn also eine LVI in einer Stanzbiopsie festgestellt wird, kann sie durchaus von Bedeutung sein, und ihr Vorhandensein sollte aufgezeichnet werden. Das Vorhandensein einer LVI hat keinen Einfluss auf die Zuweisung der UICC/AJCC-Kategorie                                 T."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10380"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* item.item[=].item[=].item[=].text = "Perineurale Infiltration"
* item.item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.49"
* item.item[=].item[=].item[=].enableWhen.operator = #!=
* item.item[=].item[=].item[=].enableWhen.answerCoding = $sct#110396000 "Kein Anhalt für Malignität"
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12--20190811122751"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10380-help"
* item.item[=].item[=].item[=].item.text = "Die Bedeutung der perineuralen Invasion in Prostata-Stanzbiopsien ist unklar. Einige Studien zeigen eine Korrelation mit EPE in den entsprechenden Proben nach radikaler Prostatektomie oder einen Zusammenhang mit ungünstigen Ergebnissen bei Patienten, die mit radikaler Prostatektomie oder Strahlentherapie behandelt wurden. Andere Forscher haben den Prognosewert der perineuralen Invasion in der Biopsie in univariaten oder multivariaten Analysen in Frage gestellt. Die Beweislage deutet darauf hin, dass bei klinisch lokalisierter Erkrankung die perineurale Invasion ein signifikanter Prognosefaktor für EPE und nachfolgende lokale Rezidive ist. Bei fortgeschrittener Erkrankung ist eine perineurale Invasion häufig und wahrscheinlich nicht von prognostischer Bedeutung. Es sollte auch beachtet werden, dass im Biopsiematerial nicht unbedingt Nerven vorhanden sind, weshalb die Möglichkeit einer perineuralen Invasion nicht immer beurteilt werden kann."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "Die Bedeutung der perineuralen Invasion in Prostata-Stanzbiopsien ist unklar. Einige Studien zeigen eine Korrelation mit EPE in den entsprechenden Proben nach radikaler Prostatektomie oder einen Zusammenhang mit ungünstigen Ergebnissen bei Patienten, die mit radikaler Prostatektomie oder                                     Strahlentherapie behandelt wurden. Andere Forscher haben den Prognosewert der perineuralen Invasion in der Biopsie in univariaten oder multivariaten Analysen in Frage gestellt. Die Beweislage deutet darauf hin, dass bei klinisch lokalisierter Erkrankung die perineurale Invasion ein signifikanter Prognosefaktor für EPE und nachfolgende lokale Rezidive ist. Bei                                     fortgeschrittener Erkrankung ist eine perineurale Invasion häufig und wahrscheinlich nicht von prognostischer Bedeutung. Es sollte auch beachtet werden, dass im Biopsiematerial nicht unbedingt Nerven vorhanden sind, weshalb die Möglichkeit einer perineuralen Invasion nicht immer beurteilt werden kann."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.81"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $loinc#106166-2 "Associated Condition"
* item.item[=].item[=].item[=].text = "Begleiterkrankungen"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12--20190811122751"
* item.item[=].item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.81-help"
* item.item[=].item[=].item[=].item.text = "In einigen Fällen können klinische Behandlungsentscheidungen durch das Wissen über koexistierende Pathologien wie HGPIN, glanduläre Atypie mit Verdacht auf Malignität (atypische kleine azinäre Proliferation (ASAP)), AIP, granulomatöse Prostatitis usw. unterstützt werden. Wenn ein Karzinom vorhanden ist, ist das Vorhandensein von HGPIN im Allgemeinen klinisch nicht bedeutsam. Selbst wenn in der Probe kein Krebs identifiziert wird, ist die Bedeutung des Nachweises von HGPIN in Stanzbiopsien umstritten. Einige Studien stellten ein erhöhtes Risiko für die Entdeckung von Prostataadenokarzinomen in nachfolgenden Biopsien fest, während dies in anderen Studien nicht der Fall war. Studien, darunter eine, die Daten einer großen kanadischen Kohorte analysierte, fanden heraus, dass dieses Risiko mit dem Ausmaß der HGPIN zusammenhängt, d. h. mit der Anzahl der betroffenen Stellen; nur Patienten mit multifokaler HGPIN hatten ein signifikant erhöhtes Risiko für Prostatakrebs. Niedriggradige intraepitheliale Prostataneoplasie (PIN) sollte nicht gemeldet werden. Ebenso ist das Vorhandensein von ASAP im Allgemeinen nicht signifikant, wenn in einer Probe Karzinom vorhanden ist, außer gelegentlich in Situationen, in denen das Karzinom die Kriterien für eine aktive Überwachung erreicht. In dieser Situation kann eine gründliche Bewertung und Neuklassifizierung von glandulärer Atypie zu Karzinom die Behandlungsentscheidung beeinflussen. Bei Proben, bei denen kein Krebs identifiziert wurde, aber glanduläre Atypie vorliegt, beträgt das Risiko, dass in nachfolgenden Biopsien Karzinom vorhanden ist, etwa 35 %, wobei ein hoher Anteil davon klinisch unbedeutender Krebs ist. Atypische intraduktale Proliferation (AIP) ist der bevorzugte Begriff zur Beschreibung intraduktaler Neoplasien, die eine größere Komplexität oder Atypie als HGPIN aufweisen, aber nicht für die Diagnose von IDC-P ausreichen. AIP ist durch lockere kribriforme Proliferation und/oder Kernatypie gekennzeichnet, die nicht für IDC-P ausreicht, und umfasst das, was früher als kribriforme HGPIN bekannt war. Aufgrund der Verbindung von AIP mit IDC-P wird empfohlen, ihr Vorhandensein in der Biopsie zu dokumentieren, insbesondere bei Prostatakrebs niedrigeren Grades. Das Vorhandensein von AIP allein in Biopsieproben ist selten und wird durch wiederholte Folgebiopsien behandelt. Aktive Prostatitis und granulomatöse Prostatitis können einen Anstieg des prostataspezifischen Antigens (PSA) im Serum verursachen, obwohl entzündliche Läsionen zusammen mit Karzinomen auftreten können und es wichtig ist, nicht davon auszugehen, dass ihr Vorhandensein immer für einen unerklärlichen oder unverhältnismäßigen Anstieg des PSA eines Patienten verantwortlich ist. Bei einer negativen gezielten Biopsie empfiehlt ISUP, das Vorhandensein nicht krebsartiger Läsionen zu melden, die die radiologische Anomalie erklären könnten."
* item.item[=].item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].item[=].item[=].item.text.extension.valueMarkdown = "In einigen Fällen können klinische Behandlungsentscheidungen durch das Wissen über koexistierende Pathologien wie HGPIN, glanduläre Atypie mit Verdacht auf Malignität (atypische kleine azinäre Proliferation (ASAP)), AIP, granulomatöse Prostatitis usw. unterstützt werden. Wenn ein Karzinom                                     vorhanden ist, ist das Vorhandensein von HGPIN im Allgemeinen klinisch nicht bedeutsam. Selbst wenn in der Probe kein Krebs identifiziert wird, ist die Bedeutung des Nachweises von HGPIN in Stanzbiopsien umstritten. Einige Studien stellten ein erhöhtes Risiko für die Entdeckung von Prostataadenokarzinomen in nachfolgenden Biopsien fest, während dies in anderen                                     Studien nicht der Fall war. Studien, darunter eine, die Daten einer großen kanadischen Kohorte analysierte, fanden heraus, dass dieses Risiko mit dem Ausmaß der HGPIN zusammenhängt, d. h. mit der Anzahl der betroffenen Stellen; nur Patienten mit multifokaler HGPIN hatten ein signifikant erhöhtes Risiko für Prostatakrebs. Niedriggradige intraepitheliale                                     Prostataneoplasie (PIN) sollte nicht gemeldet werden. Ebenso ist das Vorhandensein von ASAP im Allgemeinen nicht signifikant, wenn in einer Probe Karzinom vorhanden ist, außer gelegentlich in Situationen, in denen das Karzinom die Kriterien für eine aktive Überwachung erreicht. In dieser Situation kann eine gründliche Bewertung und Neuklassifizierung von                                     glandulärer Atypie zu Karzinom die Behandlungsentscheidung beeinflussen. Bei Proben, bei denen kein Krebs identifiziert wurde, aber glanduläre Atypie vorliegt, beträgt das Risiko, dass in nachfolgenden Biopsien Karzinom vorhanden ist, etwa 35 %, wobei ein hoher Anteil davon klinisch unbedeutender Krebs ist. Atypische intraduktale Proliferation (AIP) ist der                                     bevorzugte Begriff zur Beschreibung intraduktaler Neoplasien, die eine größere Komplexität oder Atypie als HGPIN aufweisen, aber nicht für die Diagnose von IDC-P ausreichen. AIP ist durch lockere kribriforme Proliferation und/oder Kernatypie gekennzeichnet, die nicht für IDC-P ausreicht, und umfasst das, was früher als kribriforme HGPIN bekannt war. Aufgrund der                                     Verbindung von AIP mit IDC-P wird empfohlen, ihr Vorhandensein in der Biopsie zu dokumentieren, insbesondere bei Prostatakrebs niedrigeren Grades. Das Vorhandensein von AIP allein in Biopsieproben ist selten und wird durch wiederholte Folgebiopsien behandelt. Aktive Prostatitis und granulomatöse Prostatitis können einen Anstieg des prostataspezifischen Antigens                                     (PSA) im Serum verursachen, obwohl entzündliche Läsionen zusammen mit Karzinomen auftreten können und es wichtig ist, nicht davon auszugehen, dass ihr Vorhandensein immer für einen unerklärlichen oder unverhältnismäßigen Anstieg des PSA eines Patienten verantwortlich ist. Bei einer negativen gezielten Biopsie empfiehlt ISUP, das Vorhandensein nicht krebsartiger                                     Läsionen zu melden, die die radiologische Anomalie erklären könnten."
* item.item[=].item[=].item[=].item.type = #display
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11112"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
* item.item[=].item[=].item[=].text = "ASAP"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12|2019-08-11T12:27:51"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10390"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code[0] = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia"
* item.item[=].item[=].item[=].code[+] = $sct#446711009 "High grade prostatic intraepithelial neoplasia (disorder)"
* item.item[=].item[=].item[=].text = "Begleitende High-grade-PIN"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12"
* item.item[=].item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item[=].item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].item[=].item[=].extension[=].valueBoolean = false
* item.item[=].item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10410"
* item.item[=].item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper#Observation.hasMember:pathology-finding"
* item.item[=].item[=].item[=].code[0] = $loinc#94665-7 "Granulomatous prostatitis"
* item.item[=].item[=].item[=].code[+] = $sct#61500009 "Granulomatous prostatitis (disorder)"
* item.item[=].item[=].item[=].text = "Granulomatöse Prostatitis"
* item.item[=].item[=].item[=].type = #open-choice
* item.item[=].item[=].item[=].enableBehavior = #all
* item.item[=].item[=].item[=].required = false
* item.item[=].item[=].item[=].repeats = false
* item.item[=].item[=].item[=].readOnly = false
* item.item[=].item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.12"