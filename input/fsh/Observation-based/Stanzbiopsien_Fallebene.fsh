Instance: Prostata-StanzbiopsieFallebene
InstanceOf: Questionnaire
Usage: #example
* meta.lastUpdated = "2024-05-17T16:20:43Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* url = "https://art-decor.org/fhir/Questionnaire/Prostata-Stanzbiopsie-Fallebene"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.12"
* name = "Eingabe_Formular_fur_Stanzbiopsien_Fall"
* title = "Eingabe-Formular für Stanzbiopsien-Fall"
* status = #draft
* experimental = false
* date = "2024-05-13T12:27:04Z"
* effectivePeriod.start = "2024-05-13T12:27:04Z"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
* extension[=].valueCode = $resourceType#Practitioner
* subjectType = $resourceType#Patient


// Erster Grouper Prostatakarzinome
* item[+]
  * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10000", #group, "Prostatakarzinome")

// Zweiter Grouper Stanzbiopsien
  * item[+]
    * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10210", #group, "Stanzbiopsien")
    * code = $loinc#66117-3 "Prostate Pathology biopsy report"
// Dritter Grouper Befunde auf Fallebene
    * item[+]
      * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11249", #group, "Befunde auf Fallebene")
      * code[+] = $loinc#22637-3 "Pathology report final diagnosis Narrative"
      * code[+] = $sct#441817003:116686009=309134005 "Evaluation of biopsy specimen:Has specimen=Prostate tru-cut biopsy sample"
      * code[+] = $sct#726736004 "Interpretation of laboratory result (record artifact)"

// Histologischer Typ ICD-O-3
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11247", #open-choice, "Histologischer Typ ICD-O-3")
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
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11248", #text, "Morphologie Freitext")
        * insert observationExtract
        * insert observationExtract_laboratory_InCategory
        * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
        * code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
// ICD-O-Version
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.2.11109", #choice, "ICD-O-Version")
        * code = $sct#397005006 "WHO tumor classification (observable entity)"
        * answerOption[0].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#31 "ICD-O3; 1. Auflage 2003"
        * answerOption[+].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#32 "ICD-O3; 2. Auflage 2013"
        * answerOption[+].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#33 "ICD-O-3 2. Auflage 2019"
        * answerOption[+].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#bb "Neue Codes aus den WHO-Klassifikationen (BlueBooks)"
// Vierter Grouper Histologischer Grad
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11205", #group, "Histologischer Grad")
        * code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"

// Primäres Gleason Muster - Epstein 2005
        * item[+]
          * insert addItem("2.16.840.1.113883.3.1937.777.18.2.38", #choice, "Primaeres Gleason Muster - Epstein 2005")
          * insert observationExtract
          * insert observationExtract_laboratory_InCategory
          * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
          * code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
          * answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
          * answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
          * answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
          * answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
          * answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
          * answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"
// Sekundäres Gleason Muster (Epstein 2005)
        * item[+]
          * insert addItem("2.16.840.1.113883.3.1937.777.18.2.39", #choice, "Sekundäres Gleason Muster - Epstein 2005")
          * insert observationExtract
          * insert observationExtract_laboratory_InCategory
          * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
          * code = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
          * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.4.11247"
          * enableWhen.operator = #!=
          * enableWhen.answerCoding = $sct#110396000
          * answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
          * answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
          * answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
          * answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
          * answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
          * answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"

        * item[+]
          * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10280", #open-choice, "Gleason Score ISUP 2014 - WHO 2016")
          * insert observationExtract
          * insert observationExtract_laboratory_InCategory
          * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
          * code = $loinc#35266-6 "Gleason score in Specimen Qualitative"
          * answerOption[0].valueCoding = $sct#49878003 "Gleason grade 2 (staging scale)"
          * answerOption[+].valueCoding = $sct#46677009 "Gleason grade 3 (staging scale)"
          * answerOption[+].valueCoding = $sct#18430005 "Gleason grade 4 (staging scale)"
          * answerOption[+].valueCoding = $sct#74013009 "Gleason grade 5 (staging scale)"
          * answerOption[+].valueCoding = $sct#84556003 "Gleason grade 6 (staging scale)"
          * answerOption[+].valueCoding = $sct#57403001 "Gleason grade 7 (staging scale)"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.14010#C_999005 "Gleason  grade (Score) 7a"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.14010#C_999006 "Gleason  grade (Score) 7b"
          * answerOption[+].valueCoding = $sct#33013007 "Gleason grade 8 (staging scale)"
          * answerOption[+].valueCoding = $sct#58925000 "Gleason grade 9 (staging scale)"
          * answerOption[+].valueCoding = $sct#24514009 "Gleason grade 10 (staging scale)"
          * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
          * extension.valueCoding = $unitsofmeasure#% "percent"

// Prozentualer Anteil Gleasonmuster 4/5 (Funktion muss angepasst werden!)
        * item[+]
          * insert addAnyBItem("2.16.840.1.113883.3.1937.777.18.2.40", #quantity, "Prozentualer Anteil Gleasonmuster 4/5")
          * insert observationExtract
          * insert observationExtract_laboratory_InCategory
          * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
          * code = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area"
          * enableWhen[0].question = "2.16.840.1.113883.3.1937.777.18.2.4.10280"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#57403001 "Gleason grade 7 (staging scale)"
          * enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.10280"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#33013007 "Gleason grade 8 (staging scale)"
          * enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.10280"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#58925000 "Gleason grade 9 (staging scale)"
          * enableWhen[+].question = "2.16.840.1.113883.3.1937.777.18.2.4.10280"
          * enableWhen[=].operator = #=
          * enableWhen[=].answerCoding = $sct#24514009 "Gleason grade 10 (staging scale)"
// Gradinggruppe nach ISUP 2014/WHO 2016 (ReadOnly? Automatische Berechnung der Gruppe möglich!)
        * item[+]
          * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10270", #choice, "Gradinggruppe nach ISUP 2014/WHO 2016")
          * insert observationExtract
          * insert observationExtract_laboratory_InCategory
          * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
          * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.38"
          * enableWhen.operator = #!=
          * enableWhen.answerCoding = $sct#43771008
          * answerOption[+].valueCoding = $sct#860742008 "Gleason grade group 1 (finding)"
          * answerOption[+].valueCoding = $sct#860743003 "Gleason grade group 2 (finding)"
          * answerOption[+].valueCoding = $sct#860744009 "Gleason grade group 3 (finding)"
          * answerOption[+].valueCoding = $sct#860745005 "Gleason grade group 4 (finding)"
          * answerOption[+].valueCoding = $sct#860746006 "Gleason grade group 5 (finding)"
// Histologischer Differenzierungsgrad WHO
        * item[+]
          * insert addItem("2.16.840.1.113883.3.1937.777.18.2.2.11110", #open-choice, "Histologischer Differenzierungsgrad WHO")
          * insert observationExtract
          * insert observationExtract_laboratory_InCategory
          * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
          * code = $loinc#21858-6 "Grade Cancer"
          * answerOption[0].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#0 "Malignes Melanom der Konjunktiv"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#1 "Gut differenziert"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#2 "Mäßig differenziert"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#3 "Schlecht differenziert"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#4 "Undifferenziert"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#X "Nicht bestimmbar"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#L "Low grade (G1 oder G2)"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#M "Intermediate grade (G2 oder G3)"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#H "High grade (G3 oder G4)"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#U "Unbestimmt"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#B "Borderline"
          * answerOption[+].valueCoding = urn:oid:2.16.840.1.113883.3.1937.777.18.5.10010#T "Trifft nicht zu"
// Fünfter Grouper Tumorausbreitung     
        * item[+]
          * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11232", #group, "Tumorausbreitung")
          * code = $loinc#21891-7 "Extent of disease Prostate cancer"
// Anzahl Positive Stanzen rechts
          * item[+]
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10300", #integer, "Anzahl Positive Stanzen rechts")
            * code = $sct#399727003:18720000=251597001 "Number of tissue cores positive for carcinoma (observable entity):In (attribute)=Structure of right lateral lobe of prostate (body structure)"
// Anzahl Positive Stanzen links
          * item[+]
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.10310", #integer, "Anzahl Positive Stanzen links")
            * code = $sct#399727003:18720000=251695000 "Number of tissue cores positive for carcinoma (observable entity):In (attribute)=Structure of left lateral lobe of prostate (body structure)"
             

// Verhältnis positiver zu allen Stanzen
          * item[+]
            * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.10320", #string, "Verhältnis positiver zu allen Stanzen")
            * code[+] = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
            * code[+] = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
            * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
            * extension.valueCoding = $unitsofmeasure#% "percent"
// Prozentualer Tumoranteil Gesamt
          * item[+]
            * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.2.11142", #quantity, "Prozentualer Tumoranteil Gesamt")
            * code = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
            * extension.url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
            * extension.valueInteger = 2

// Tumorbefall Gesamt in Länge in mm
          * item[+]
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11204", #quantity, "Prozentualer Tumoranteil Gesamt")
            * code = $loinc#44618-7 "Total linear mm of carcinoma"
            * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
            * extension.valueCoding = $unitsofmeasure#mm "mm"

// Perineurale Infiltration
          * item[+]
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.31", #open-choice, "Perineurale Infiltration")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
            * code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
            * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
            * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
            * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Tumornachweis in Samenblasen          
          * item[+]
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.32", #open-choice, "Tumornachweis in Samenblasen")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")            
            * code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
            * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
            * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
            * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Lymphovaskuläre Invasion
          * item[+]
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.33", #open-choice, "Lymphovaskuläre Invasion")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
            * code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
            * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
            * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
            * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Tumornachweis in periprostatischem Binde- und Fettgewebe
          * item[+]
            * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.34", #open-choice, "Tumornachweis in periprostatischem Binde- und Fettgewebe")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
            * code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
            * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
            * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
            * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// Lokalisation Extraprostatische Tumorausbreitung
          * item[+]
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11241", #open-choice, "Lokalisation Extraprostatische Tumorausbreitung")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
            * code = $loinc#84902-6 "Extraprostatic extension site [Anatomy] of Prostate tumor"
            * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.34"
            * enableWhen.operator = #=
            * enableWhen.answerCoding = $sct#52101004 "Present (qualifier value)"
            * answerOption[+].valueCoding = $loinc#LA25151-4 "Apical"
            * answerOption[+].valueCoding = $loinc#LA26552-2 "Bladder neck"
            * answerOption[+].valueCoding = $loinc#LA16059-0 "Anterior"
            * answerOption[+].valueCoding = $loinc#LA26553-0 "Lateral"
            * answerOption[+].valueCoding = $loinc#LA26554-8 "Posterolateral"
            * answerOption[+].valueCoding = $loinc#LA16060-8 "Posterior"
            * answerOption[+].valueCoding = $loinc#LA46-8 "Other"

// Intraduktales Karzinom
          * item[+] //Code?
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.4.11207", #open-choice, "Intraduktales Karzinom")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
            * code = $sct#86616005 "Intraductal carcinoma, noninfiltrating (morphologic abnormality)"
            * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
            * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
            * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

// ASAP
          * item[+] 
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.35", #open-choice, "ASAP")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation")
            * code = $sct#249604002:116676008=125556001 "Prostate finding (finding) - Associated morphology (attribute) = Atypical proliferation (morphologic abnormality)"
            * answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
            * answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
            * answerOption[+].valueCoding = $sct#373068000 "Undetermined (qualifier value)"

// Begleitende High-grade-PIN
          * item[+] 
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.36", #open-choice, "Begleitende High-grade-PIN")
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
            * insert addItem("2.16.840.1.113883.3.1937.777.18.2.37", #open-choice, "Granulomatöse Prostatitis")
            * insert observationExtract
            * insert observationExtract_laboratory_InCategory
            * insert observationExtractSectionInCategory(22635-7 "Pathology report microscopic observation") 
            * code[+] = $loinc#94665-7 "Granulomatous prostatitis"
            * code[+] = $sct#61500009 "Granulomatous prostatitis (disorder)"
            * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
            * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
            * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"

