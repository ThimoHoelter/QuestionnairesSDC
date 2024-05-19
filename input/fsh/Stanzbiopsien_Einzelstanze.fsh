Instance: StanzbiopsienEinzelstanze
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2024-05-08T10:31:16Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* url = "https://art-decor.org/fhir/Questionnaire/Stanzbiopsien_Einzelstanze"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.11"
* name = "Eingabe_Formular_fur_Stanzbiopsien_Einzelstanzen"
* title = "Eingabe-Formular für Stanzbiopsien-Einzelstanzen"
* status = #draft
* experimental = false
* date = "2024-05-07T15:05:24Z"
* description = "Modell für \"intelligentes\" Formular"
* effectivePeriod.start = "2024-05-07T15:05:24Z"

// Erster Grouper
* item[+]
  * linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10000"
  * text = "Prostatakarzinome"
  * type = #group
  * required = true
  * repeats = false
  * readOnly = false

// Zweiter Grouper
* item.item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10210"
* item.item.code = $loinc#66117-3 "Prostate Pathology biopsy report"
* item.item.text = "Stanzbiopsien"
* item.item.type = #group
* item.item.enableBehavior = #all
* item.item.required = true
* item.item.repeats = false
* item.item.readOnly = false

//Dritter Grouper
* item.item.item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11242"
* item.item.item.code[+] = $loinc#66117-3 "Prostate Pathology biopsy report"
* item.item.item.code[+] = $sct#441817003:116686009=309134005 "Evaluation of biopsy specimen:Has specimen=Prostate tru-cut biopsy sample"
* item.item.item.text = "Verwendung für jeden einzelnen Stanzzylinder"
* item.item.item.type = #group
* item.item.item.enableBehavior = #all
* item.item.item.required = true
* item.item.item.repeats = true
* item.item.item.readOnly = false

// Proben ID
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.29"
* item.item.item.item[=].code = $sct#372274003 "Sample identification number (observable entity)"
* item.item.item.item[=].text = "Proben-ID"
* item.item.item.item[=].type = #string
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = true
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false

// Lokalisation der Entnahmestelle
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11243"
* item.item.item.item[=].code = $loinc#94738-2 "Biopsy site [Anatomy]"
* item.item.item.item[=].text = "Lokalisation der Entnahmestelle"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716909008 "Structure of middle regional part of anterior fibromuscular stroma of right half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716892006 "Structure of basal part of anterior fibromuscular stroma of right half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716911004 "Structure of middle regional part of transition zone of right half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716918005 "Structure of lateral middle regional part of peripheral zone of left half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716935009 "Structure of apical part of peripheral zone"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716910003 "Structure of middle regional part of anterior fibromuscular stroma of left half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716893001 "Structure of basal part of anterior fibromuscular stroma of left half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716912006 "Structure of middle regional part of transition zone of left half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716902004 "Structure of basal part of peripheral zone of right half prostate (body structure)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#716903009 "Structure of basal part of peripheral zone of left half prostate (body structure)"
* item.item.item.item[+].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item.item.item[=].extension[=].valueCoding = $unitsofmeasure#cm "cm"
* item.item.item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item.item.item.item[=].extension[=].valueInteger = 2

// Länge der Stanzzylinder
* item.item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11244"
* item.item.item.item[=].code = $loinc#44619-5 "Length of tissue core(s)"
* item.item.item.item[=].text = "Länge der Stanzzylinder"
* item.item.item.item[=].type = #quantity
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false

// Anzahl der Stanzzylinder im Einsendegefäß
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10240"
* item.item.item.item[=].code = $loinc#44652-6 "Total number of cores in Tissue core"
* item.item.item.item[=].text = "Anzahl der Stanzzylinder im Einsendegefäß"
* item.item.item.item[=].type = #integer
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false

// Histologischer Typ ICD-O-3
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
* item.item.item.item[=].code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* item.item.item.item[=].text = "Histologischer Typ ICD-O-3"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = true
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#110396000 "No evidence of malignant neoplasm (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Azinäres Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Atrophe Variante eines Adenokarzinoms"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Pseudohyperplastische Variante eines Adenokarzinoms"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Mikrozystische Variante eines Adenokarzinoms"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Foamy Gland Variante eines Adenokarzinoms"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8480/3 "Muzinöses Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8490/3 "Siegelringzelliges Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Pleomorphe riesenzellige Variante eines Adenokarzinoms"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8290/3 "Onkozytisches Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8082/3 "Lympoepitheliomartiges Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8572/3 "Karzinom mit spindelzelliger Differenzierung"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8148/2 "Prostatische intraepitheliale Neoplasie (PIN), high grade"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8500/2 "Intraduktales Karzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8500/3 "Duktales Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8201/3 "Kribriformes Karzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8260/3 "Papilläres Karzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8230/3 "Solides Karzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8120/3 "Urothelkarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8070/3 "Plattenepithelkarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8560/3 "Adenosquamöses Karzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8147/0 "Basalzelladenom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8147/3 "Basalzellkarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8574/3 "Neuroendokrin differenziertes Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8240/3 "Karzinoidtumor"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8041/3 "Kleinzelliges Karzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8013/3 "Großzelliges neuroendokrines Karzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8680/1 "Paragangliom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9500/3 "Neuroblastom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8935/1 "Stromatumor mit unklarem malignen Potential"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8935/3 "Stromasarkom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8890/3 "Leiomyosarkom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8900/3 "Rhabdomyosarkom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9220/3 "Chondrosarkom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9120/3 "Angiosarkom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8830/3 "Malignes fibröses Histiozytom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9540/3 "Maligner peripherer Nervenscheidentumor"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9120/0 "Hämangiom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9220/0 "Chondrom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8890/0 "Leiomyom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9580/0 "Granularzelltumor"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9150/1 "Hämangioperizytom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8815/0 "Solitärer fibröser Tumor"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8440/0 "Zystadenom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8960/3 "Nephroblastom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8963/3 "Rhabdoidtumor"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9071/3 "Dottersacktumor"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9061/3 "Seminom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9081/3 "Embryonales Karzinom und Teratom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9100/3 "Chorionkarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8310/3 "Klarzelliges Adenokarzinom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8720/3 "Malignes Melanom"
* item.item.item.item[=].answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8000/3 "sonstige"

// Morphologie Freitext
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10260"
* item.item.item.item[=].code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
* item.item.item.item[=].text = "Morphologie Freitext"
* item.item.item.item[=].type = #text
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false

// Primäres Gleason Muster (Epstein 2005)
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
* item.item.item.item[=].code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
* item.item.item.item[=].text = "Primäres Gleason Muster (Epstein 2005)"
* item.item.item.item[=].type = #choice
* item.item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
* item.item.item.item[=].enableWhen.operator = #!=
* item.item.item.item[=].enableWhen.answerCoding = $sct#110396000
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = true
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"

// Sekundäres Gleason Muster (Epstein 2005)
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
* item.item.item.item[=].code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
* item.item.item.item[=].text = "Sekundäres Gleason Muster (Epstein 2005)"
* item.item.item.item[=].type = #choice
* item.item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
* item.item.item.item[=].enableWhen.operator = #!=
* item.item.item.item[=].enableWhen.answerCoding = $sct#110396000
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"
* item.item.item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item.item.item[=].extension.valueCoding = $unitsofmeasure#% "Prozent"

// Prozentualer Anteil Gleasonmuster 4/5 (Funktion muss angepasst werden! Darf nur erscheinen wenn Primär+Sekundär >= 7 ist. Siehe Templates)
* item.item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11144"
* item.item.item.item[=].code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area"
* item.item.item.item[=].text = "Prozentualer Anteil Gleasonmuster 4/5"
* item.item.item.item[=].type = #quantity
* item.item.item.item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
* item.item.item.item[=].enableWhen[=].operator = #=
* item.item.item.item[=].enableWhen[=].answerCoding = $sct#369773008 "Muster 4"
* item.item.item.item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
* item.item.item.item[=].enableWhen[=].operator = #=
* item.item.item.item[=].enableWhen[=].answerCoding = $sct#369773008 "Muster 4"
* item.item.item.item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
* item.item.item.item[=].enableWhen[=].operator = #=
* item.item.item.item[=].enableWhen[=].answerCoding = $sct#369774002 "Muster 5"
* item.item.item.item[=].enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.11246"
* item.item.item.item[=].enableWhen[=].operator = #=
* item.item.item.item[=].enableWhen[=].answerCoding = $sct#369774002 "Muster 5"
* item.item.item.item[=].enableBehavior = #any
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false

// Gradinggruppe nach ISUP 2014/WHO 2016 (ReadOnly? Automatische Berechnung der Gruppe möglich!)
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11200"
* item.item.item.item[=].text = "Gradinggruppe nach ISUP 2014/WHO 2016"
* item.item.item.item[=].type = #choice
* item.item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
* item.item.item.item[=].enableWhen.operator = #!=
* item.item.item.item[=].enableWhen.answerCoding = $sct#43771008
* item.item.item.item[=].enableBehavior = #all
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#860742008 "Gleason grade group 1 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#860743003 "Gleason grade group 2 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#860744009 "Gleason grade group 3 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#860745005 "Gleason grade group 4 (finding)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#860746006 "Gleason grade group 5 (finding)"

// Verhältnis positiver zu allen Stanzen (Plausibilitätskontrolle z.B. XX/XX)
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.30"
* item.item.item.item[=].text = "Verhältnis positiver zu allen Stanzen"
* item.item.item.item[=].type = #string
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10330"
* item.item.item.item[=].code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"

// Prozentualer Tumoranteil ("%" hinzufügen?)
* item.item.item.item[=].text = "Prozentualer Tumoranteil"
* item.item.item.item[=].type = #quantity
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false

// Tumorbefall für befallene Stanze in Länge in mm (mm Einheit fehlt!)
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10340"
* item.item.item.item[=].code = $loinc#44618-7 "Total linear mm of carcinoma"
* item.item.item.item[=].text = "Tumorbefall für befallene Stanze in Länge in mm"
* item.item.item.item[=].type = #quantity
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false

// Perineurale Infiltration
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10380"
* item.item.item.item[=].code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* item.item.item.item[=].text = "Perineurale Infiltration"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
// Tumornachweis in Samenblasen
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10370"
* item.item.item.item[=].code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
* item.item.item.item[=].text = "Tumornachweis in Samenblasen"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11206"
* item.item.item.item[=].code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
// Lymphovaskuläre Invasion
* item.item.item.item[=].text = "Lymphovaskuläre Invasion"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"


* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10360"
* item.item.item.item[=].code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
* item.item.item.item[=].text = "Tumornachweis in periprostatischem Binde- und Fettgewebe"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.28"
* item.item.item.item[=].text = "Intraduktales Karzinom"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.2.11112"
* item.item.item.item[=].code = $sct#249604002:116676008=125556001 "Prostate finding (finding) - Associated morphology (attribute) = Atypical proliferation (morphologic abnormality)"
* item.item.item.item[=].text = "ASAP"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#373068000 "Undetermined (qualifier value)"
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10390"
* item.item.item.item[=].code[+] = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia"
* item.item.item.item[=].code[+] = $sct#446711009 "High grade prostatic intraepithelial neoplasia (disorder)"
* item.item.item.item[=].text = "Begleitende High-grade-PIN"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
* item.item.item.item[+].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10410"
* item.item.item.item[=].code[+] = $loinc#94665-7 "Granulomatous prostatitis"
* item.item.item.item[=].code[+] = $sct#61500009 "Granulomatous prostatitis (disorder)"
* item.item.item.item[=].text = "Granulomatöse Prostatitis"
* item.item.item.item[=].type = #open-choice
* item.item.item.item[=].required = false
* item.item.item.item[=].repeats = false
* item.item.item.item[=].readOnly = false
* item.item.item.item[=].answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
* item.item.item.item[=].answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"