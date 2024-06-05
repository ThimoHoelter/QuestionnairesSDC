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
* item[+] //Code??
  * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10000", #group, "Prostatakarzinome")

// Zweiter Grouper
  * item[+]
    * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10210", #group, "Stanzbiopsien")
    * code = $loinc#66117-3 "Prostate Pathology biopsy report"

//Dritter Grouper
    * item[+]
      * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11242", #group, "Verwendung für jeden einzelnen Stanzzylinder")
      * code[+] = $loinc#66117-3 "Prostate Pathology biopsy report"
      * code[+] = $sct#441817003:116686009=309134005 "Evaluation of biopsy specimen:Has specimen=Prostate tru-cut biopsy sample"
// -----------------------------------------------------------------------------------------------------------------------------------
// Erste vier Fragen in einen eigene Fragebogen!
// Proben ID 
      * item[+] //Prepopulation!
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.29", #string, "Proben-ID")
        * code = $sct#372274003 "Sample identification number (observable entity)"

// Lokalisation der Entnahmestelle
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11243", #open-choice, "Lokalisation der Entnahmestelle")
        * code = $loinc#94738-2 "Biopsy site [Anatomy]"
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
        * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
        * extension[=].valueCoding = $unitsofmeasure#cm "cm"
        * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
        * extension[=].valueInteger = 2

// Länge der Stanzzylinder
      * item[+] //Prepoplulation von Klinische Informationen?
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11244", #quantity, "Lokalisation der Entnahmestelle")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * insert uunit(cm)
        * insert maxDecimalPlaces(3) //not supported in LHC
        * code = $loinc#44619-5 "Length of tissue core(s)"

// Anzahl der Stanzzylinder im Einsendegefäß
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10240", #integer, "Anzahl der Stanzzylinder im Einsendungsgefäß")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22637-3 "Pathology report diagnosis")
        * code = $loinc#44652-6 "Total number of cores Tissue Core"
//-----------------------------------------------------------------------------------------------------------------------------------------

// Histologischer Typ ICD-O-3
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10250", #open-choice, "Histologischer Typ ICD-O-3")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
        * answerOption[+].valueCoding = $sct#110396000 "No evidence of malignant neoplasm (finding)"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Azinäres Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Atrophe Variante eines Adenokarzinoms"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Pseudohyperplastische Variante eines Adenokarzinoms"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Mikrozystische Variante eines Adenokarzinoms"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Foamy Gland Variante eines Adenokarzinoms"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8480/3 "Muzinöses Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8490/3 "Siegelringzelliges Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8140/3 "Pleomorphe riesenzellige Variante eines Adenokarzinoms"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8290/3 "Onkozytisches Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8082/3 "Lympoepitheliomartiges Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8572/3 "Karzinom mit spindelzelliger Differenzierung"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8148/2 "Prostatische intraepitheliale Neoplasie (PIN), high grade"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8500/2 "Intraduktales Karzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8500/3 "Duktales Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8201/3 "Kribriformes Karzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8260/3 "Papilläres Karzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8230/3 "Solides Karzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8120/3 "Urothelkarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8070/3 "Plattenepithelkarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8560/3 "Adenosquamöses Karzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8147/0 "Basalzelladenom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8147/3 "Basalzellkarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8574/3 "Neuroendokrin differenziertes Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8240/3 "Karzinoidtumor"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8041/3 "Kleinzelliges Karzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8013/3 "Großzelliges neuroendokrines Karzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8680/1 "Paragangliom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9500/3 "Neuroblastom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8935/1 "Stromatumor mit unklarem malignen Potential"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8935/3 "Stromasarkom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8890/3 "Leiomyosarkom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8900/3 "Rhabdomyosarkom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9220/3 "Chondrosarkom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9120/3 "Angiosarkom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8830/3 "Malignes fibröses Histiozytom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9540/3 "Maligner peripherer Nervenscheidentumor"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9120/0 "Hämangiom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9220/0 "Chondrom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8890/0 "Leiomyom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9580/0 "Granularzelltumor"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9150/1 "Hämangioperizytom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8815/0 "Solitärer fibröser Tumor"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8440/0 "Zystadenom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8960/3 "Nephroblastom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8963/3 "Rhabdoidtumor"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9071/3 "Dottersacktumor"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9061/3 "Seminom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9081/3 "Embryonales Karzinom und Teratom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#9100/3 "Chorionkarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8310/3 "Klarzelliges Adenokarzinom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8720/3 "Malignes Melanom"
        * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.6.43.1#8000/3 "sonstige"

// Morphologie Freitext
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10260", #text, "Morphologie Freitext")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"

// Primäres Gleason Muster (Epstein 2005)
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10290", #choice, "Primäres Gleason Muster - Epstein 2005")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
        * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
        * enableWhen.operator = #!=
        * enableWhen.answerCoding = $sct#110396000
        * answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
        * answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
        * answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
        * answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
        * answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
        * answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"

// Sekundäres Gleason Muster (Epstein 2005)
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11246", #choice, "Sekundäres Gleason Muster - Epstein 2005")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
        * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10250"
        * enableWhen.operator = #!=
        * enableWhen.answerCoding = $sct#110396000
        * answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
        * answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
        * answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
        * answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
        * answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
        * answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"


// Prozentualer Anteil Gleasonmuster 4/5 (Funktion muss angepasst werden! Darf nur erscheinen wenn Primär+Sekundär >= 7 ist. Siehe Templates)
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.2.11144", #quantity, "Prozentualer Anteil Gleasonmuster 4/5")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area"
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
        * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
        * extension.valueCoding = $unitsofmeasure#% "Prozent"
// Gradinggruppe nach ISUP 2014/WHO 2016 (ReadOnly? Automatische Berechnung der Gruppe möglich!)
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.2.11200", #choice, "Gradinggruppe nach ISUP 2014/WHO 2016")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.10290"
        * enableWhen.operator = #!=
        * enableWhen.answerCoding = $sct#43771008
        * answerOption[+].valueCoding = $sct#860742008 "Gleason grade group 1 (finding)"
        * answerOption[+].valueCoding = $sct#860743003 "Gleason grade group 2 (finding)"
        * answerOption[+].valueCoding = $sct#860744009 "Gleason grade group 3 (finding)"
        * answerOption[+].valueCoding = $sct#860745005 "Gleason grade group 4 (finding)"
        * answerOption[+].valueCoding = $sct#860746006 "Gleason grade group 5 (finding)"

// Verhältnis positiver zu allen Stanzen (Plausibilitätskontrolle z.B. XX/XX)
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.30", #string, "Verhältnis positiver zu allen Stanzen")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
// Prozentualer Tumoranteil ("%" hinzufügen?)
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10330", #quantity, "Prozentualer Tumoranteil")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $sct#385396009 "Percentage of prostatic tissue, obtained by needle biopsy, involved by carcinoma (observable entity)"
// Tumorbefall für befallene Stanze in Länge in mm (mm Einheit fehlt!)
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10340", #quantity, "Tumorbefall für befallene Stanze in Länge in mm")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#44618-7 "Total linear mm of carcinoma"
// Perineurale Infiltration
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10380", #open-choice, "Perineurale Infiltration")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
        * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
        * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
        * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Tumornachweis in Samenblasen          
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10370", #open-choice, "Tumornachweis in Samenblasen")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")            
        * code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
        * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
        * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
        * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Lymphovaskuläre Invasion
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11206", #open-choice, "Lymphovaskuläre Invasion")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
        * code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
        * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
        * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
        * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Tumornachweis in periprostatischem Binde- und Fettgewebe
      * item[+]
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10360", #open-choice, "Tumornachweis in periprostatischem Binde- und Fettgewebe")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
        * code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
        * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
        * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
        * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
// Intraduktales Karzinom
      * item[+] //Code?
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.28", #open-choice, "Intraduktales Karzinom")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
        * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
        * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
        * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
// ASAP
      * item[+] 
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.2.11112", #open-choice, "ASAP")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $sct#249604002:116676008=125556001 "Prostate finding (finding) - Associated morphology (attribute) = Atypical proliferation (morphologic abnormality)"
        * answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
        * answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
        * answerOption[+].valueCoding = $sct#373068000 "Undetermined (qualifier value)"
// Begleitende High-grade-PIN
      * item[+] 
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10390", #open-choice, "Begleitende High-grade-PIN")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
        * code[+] = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia"
        * code[+] = $sct#446711009 "High grade prostatic intraepithelial neoplasia (disorder)"
        * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
        * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
        * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Granulomatöse Prostatitis
      * item[+] 
        * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10410", #open-choice, "Granulomatöse Prostatitis")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
        * code[+] = $loinc#94665-7 "Granulomatous prostatitis"
        * code[+] = $sct#61500009 "Granulomatous prostatitis (disorder)"
        * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
        * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
        * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"