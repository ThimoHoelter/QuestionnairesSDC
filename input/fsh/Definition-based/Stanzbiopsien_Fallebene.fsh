Instance: Prostata-StanzbiopsieFallebene-Def-Extr
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
        * insert addExtractionContextGrouperNew("PathoFinding_HistoICDO3", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11247", #open-choice, "Histologischer Typ ICD-O-3", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
          * answerOption[+].valueCoding = $sct#110396000 "No evidence of malignant neoplasm (finding)"
          * answerOption[+].valueCoding = $ICDO-3#8140/3 "Azinäres Adenokarzinom"
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
          * insert addExtractionHiddenItem("PathoFinding_HistoICDO3_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
          * initial.valueCoding = $loinc#59847-4 "Histology and Behavior ICD-O-3 Cancer"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_HistoICDO3_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_HistoICDO3_category_section", #22637-3)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_HistoICDO3_status", #final)
  // Morphologie Freitext
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_MorphTextF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11248", #text, "Morphologie Freitext", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueString)
          * code = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_MorphTextF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
          * initial.valueCoding = $loinc#33731-1 "Histology type in Cancer specimen Narrative"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_MorphTextF_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_MorphTextF_category_section", #22637-3)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_MorphTextF_status", #final)

  // ICD-O-Version
      * item[+]
        * insert addExtractionContextGrouperNew("PathoFinding_ICD-O-Version", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
        * item[+]
          * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.2.11109", #choice, "ICD-O-Version", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
          * code = $sct#397005006 "WHO tumor classification (observable entity)"
          * answerOption[0].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#31 "ICD-O3; 1. Auflage 2003"
          * answerOption[+].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#32 "ICD-O3; 2. Auflage 2013"
          * answerOption[+].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#33 "ICD-O-3 2. Auflage 2019"
          * answerOption[+].valueCoding = urn:oid:1.2.276.0.76.3.1.131.1.5.153#bb "Neue Codes aus den WHO-Klassifikationen (BlueBooks)"
        * item[+]
          * insert addExtractionHiddenItem("PathoFinding_ICD-O-Version_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
          * initial.valueCoding = $sct#397005006 "WHO tumor classification (observable entity)"
        * item[+]
          * insert addPathoFindingLaboratoryCode("PathoFinding_ICD-O-Version_category_laboratory")
        * item[+]
          * insert addPathoFindingSectionCode("PathoFinding_ICD-O-Version_category_section", #22637-3)
        * item[+]
          * insert addPathoFindingStatusCode("PathoFinding_ICD-O-Version_status", #final)
  // Vierter Grouper Histologischer Grad
      * item[+]
        * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11205", #group, "Histologischer Grad")
        * code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"

  // Primäres Gleason Muster - Epstein 2005
        * item[+]
          * insert addExtractionContextGrouperNew("PathoFinding_PrimaerGleasonF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
          * item[+]
            * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.38", #choice, "Primaeres Gleason Muster - Epstein 2005", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
            * code = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
            * answerOption[+].valueCoding = $sct#369770006 "Gleason Pattern 1 (finding)"
            * answerOption[+].valueCoding = $sct#369771005 "Gleason Pattern 2 (finding)"
            * answerOption[+].valueCoding = $sct#369772003 "Gleason Pattern 3 (finding)"
            * answerOption[+].valueCoding = $sct#369773008 "Gleason Pattern 4 (finding)"
            * answerOption[+].valueCoding = $sct#369774002 "Gleason Pattern 5 (finding)"
            * answerOption[+].valueCoding = $sct#43771008 "Morphology not applicable (finding)"
          * item[+]
            * insert addExtractionHiddenItem("PathoFinding_PrimaerGleasonF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
            * initial.valueCoding = $loinc#44641-9 "Gleason pattern.primary in Prostate tumor"
          * item[+]
            * insert addPathoFindingLaboratoryCode("PathoFinding_PrimaerGleasonF_category_laboratory")
          * item[+]
            * insert addPathoFindingSectionCode("PathoFinding_PrimaerGleasonF_category_section", #22637-3)
          * item[+]
            * insert addPathoFindingStatusCode("PathoFinding_PrimaerGleasonF_status", #final)
  // Sekundäres Gleason Muster (Epstein 2005)
        
        
        * item[+]
          * insert addExtractionContextGrouperNew("PathoFinding_SekundaerGleasonF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
          * item[+]
            * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.39", #choice, "Sekundaeres Gleason Muster - Epstein 2005", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
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
            * insert addExtractionHiddenItem("PathoFinding_SekundaerGleasonF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
            * initial.valueCoding = $loinc#44642-7 "Gleason pattern.secondary in Prostate tumor"
          * item[+]
            * insert addPathoFindingLaboratoryCode("PathoFinding_SekundaerGleasonF_category_laboratory")
          * item[+]
            * insert addPathoFindingSectionCode("PathoFinding_SekundaerGleasonF_category_section", #22637-3)
          * item[+]
            * insert addPathoFindingStatusCode("PathoFinding_SekundaerGleasonF_status", #final)

// Gleason Score
        * item[+]
          * insert addExtractionContextGrouperNew("PathoFinding_GleasonScore", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
          * item[+]
            * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10280", #open-choice, "Gleason Score ISUP 2014 - WHO 2016", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
            * required = true
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
          * item[+]
            * insert addExtractionHiddenItem("PathoFinding_GleasonScore_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
            * initial.valueCoding = $loinc#35266-6 "Gleason score in Specimen Qualitative"
          * item[+]
            * insert addPathoFindingLaboratoryCode("PathoFinding_GleasonScore_category_laboratory")
          * item[+]
            * insert addPathoFindingSectionCode("PathoFinding_GleasonScore_category_section", #22637-3)
          * item[+]
            * insert addPathoFindingStatusCode("PathoFinding_GleasonScore_status", #final)

  // Prozentualer Anteil Gleasonmuster 4/5 (Funktion muss angepasst werden!)
        * item[+]
          * insert addExtractionContextGrouperNew("PathoFinding_ProzentGleasonF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
          * item[+]
            * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.40", #quantity, "Prozentualer Anteil Gleasonmuster 4/5", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity")
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
            * initial.valueQuantity.unit = "%"
            * initial.valueQuantity.system = $unitsofmeasure
            * initial.valueQuantity.code = #%
          * item[+]
            * insert addExtractionHiddenItem("PathoFinding_ProzentGleasonF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
            * initial.valueCoding = $loinc#94735-8 "Prostate tumor area with Gleason pattern 4+5/Total tumor area"
          * item[+]
            * insert addPathoFindingLaboratoryCode("PathoFinding_ProzentGleasonF_category_laboratory")
          * item[+]
            * insert addPathoFindingSectionCode("PathoFinding_ProzentGleasonF_category_section", #22637-3)
          * item[+]
            * insert addPathoFindingStatusCode("PathoFinding_ProzentGleasonF_status", #final)
  // Gradinggruppe nach ISUP 2014/WHO 2016 (ReadOnly? Automatische Berechnung der Gruppe möglich!)
        * item[+]
          * insert addExtractionContextGrouperNew("PathoFinding_GleasonGradingF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
          * item[+]
            * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10270", #choice, "Gradinggruppe nach ISUP 2014/WHO 2016", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
            * required = true
            * code = $loinc#94734-1 "Prostate cancer grade group"
            * enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.38"
            * enableWhen.operator = #!=
            * enableWhen.answerCoding = $sct#43771008
            * answerOption[+].valueCoding = $sct#860742008 "Gleason grade group 1 (finding)"
            * answerOption[+].valueCoding = $sct#860743003 "Gleason grade group 2 (finding)"
            * answerOption[+].valueCoding = $sct#860744009 "Gleason grade group 3 (finding)"
            * answerOption[+].valueCoding = $sct#860745005 "Gleason grade group 4 (finding)"
            * answerOption[+].valueCoding = $sct#860746006 "Gleason grade group 5 (finding)"
          * item[+]
            * insert addExtractionHiddenItem("PathoFinding_GleasonGradingF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
            * initial.valueCoding = $loinc#94734-1 "Prostate cancer grade group"
          * item[+]
            * insert addPathoFindingLaboratoryCode("PathoFinding_GleasonGradingF_category_laboratory")
          * item[+]
            * insert addPathoFindingSectionCode("PathoFinding_GleasonGradingF_category_section", #22637-3)
          * item[+]
            * insert addPathoFindingStatusCode("PathoFinding_GleasonGradingF_status", #final)
  // Histologischer Differenzierungsgrad WHO
        * item[+]
          * insert addExtractionContextGrouperNew("PathoFinding_HistoDiffGrad", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
          * item[+]
            * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.2.11110", #open-choice, "Histologischer Differenzierungsgrad WHO", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
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
          * item[+]
            * insert addExtractionHiddenItem("PathoFinding_HistoDiffGrad_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
            * initial.valueCoding = $loinc#21858-6 "Grade Cancer"
          * item[+]
            * insert addPathoFindingLaboratoryCode("PathoFinding_HistoDiffGrad_category_laboratory")
          * item[+]
            * insert addPathoFindingSectionCode("PathoFinding_HistoDiffGrad_category_section", #22637-3)
          * item[+]
            * insert addPathoFindingStatusCode("PathoFinding_HistoDiffGrad_status", #final)
  // Fünfter Grouper Tumorausbreitung
        * item[+]
          * insert addRItem("2.16.840.1.113883.3.1937.777.18.2.4.11232", #group, "Tumorausbreitung")
          * code = $loinc#21891-7 "Extent of disease Prostate cancer"
  // Anzahl Positive Stanzen rechts
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_AnzahlPosStanzenRechts", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10300", #integer, "Anzahl Positive Stanzen rechts", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueString")
              * code = $sct#399727003:18720000=251597001 "Number of tissue cores positive for carcinoma (observable entity):In (attribute)=Structure of right lateral lobe of prostate (body structure)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_AnzahlPosStanzenRechts_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $sct#399727003:18720000=251597001 "Number of tissue cores positive for carcinoma (observable entity):In (attribute)=Structure of right lateral lobe of prostate (body structure)"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_AnzahlPosStanzenRechts_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_AnzahlPosStanzenRechts_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_AnzahlPosStanzenRechts_status", #final)
  // Anzahl Positive Stanzen links
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_AnzahlPosStanzenLinks", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10310", #string, "Anzahl Positive Stanzen links", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueString")
              * code = $sct#399727003:18720000=251695000 "Number of tissue cores positive for carcinoma (observable entity):In (attribute)=Structure of left lateral lobe of prostate (body structure)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_AnzahlPosStanzenLinks_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $sct#399727003:18720000=251695000 "Number of tissue cores positive for carcinoma (observable entity):In (attribute)=Structure of left lateral lobe of prostate (body structure)"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_AnzahlPosStanzenLinks_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_AnzahlPosStanzenLinks_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_AnzahlPosStanzenLinks_status", #final)  
  // Verhältnis positiver zu allen Stanzen
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_VerhaeltnisPositiveStanzenF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.10320", #string, "Verhältnis positiver zu allen Stanzen", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueString")
              * required = true
              * code[+] = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
              * code[+] = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_VerhaeltnisPositiveStanzenF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $sct#372303007 "Ratio of blocks with prostate tumor to total number of blocks obtained (observable entity)"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_VerhaeltnisPositiveStanzenF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_VerhaeltnisPositiveStanzenF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_VerhaeltnisPositiveStanzenF_status", #final)
  // Prozentualer Tumoranteil Gesamt
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_ProzentTumoranteilF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.2.11142", #quantity, "Prozentualer Tumoranteil Gesamt", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity")
              * required = true
              * code = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
              * initial.valueQuantity.unit = "%"
              * initial.valueQuantity.system = $unitsofmeasure
              * initial.valueQuantity.code = #%
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_ProzentTumoranteilF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#44651-8 "Tissue cores.positive.carcinoma in Tissue core"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_ProzentTumoranteilF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_ProzentTumoranteilF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_ProzentTumoranteilF_status", #final)
  // Tumorbefall Gesamt in Länge in mm
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_TumorGesamtLaenge", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11204", #quantity, "Tumorbefall Gesamt in Länge in mm", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueQuantity")
              * code = $loinc#44618-7 "Total linear mm of carcinoma"
              * initial.valueQuantity.unit = "mm"
              * initial.valueQuantity.system = $unitsofmeasure
              * initial.valueQuantity.code = #mm
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_TumorGesamtLaenge_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#44618-7 "Total linear mm of carcinoma"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_TumorGesamtLaenge_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_TumorGesamtLaenge_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_TumorGesamtLaenge_status", #final)
  // Perineurale Infiltration
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_PerineuraleInfiltrationF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.31", #open-choice, "Perineurale Infiltration", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
              * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
              * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
              * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_PerineuraleInfiltrationF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_PerineuraleInfiltrationF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_PerineuraleInfiltrationF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_PerineuraleInfiltrationF_status", #final)

  // Tumornachweis in Samenblasen          
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_TumornachweisinSamenblaseF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.32", #open-choice, "Tumornachweis in Samenblasen", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
              * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
              * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
              * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_TumornachweisinSamenblaseF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#44626-0 "Seminal vesicle invasion [Identifier] in Specimen by CAP cancer protocols"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_TumornachweisinSamenblaseF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_TumornachweisinSamenblaseF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_TumornachweisinSamenblaseF_status", #final)

  // Lymphovaskuläre Invasion
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_LymphovaskuläreInvasionF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.33", #open-choice, "Lymphovaskuläre Invasion", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
              * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
              * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
              * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_LymphovaskuläreInvasionF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#33761-8 "Venous + Lymphatic small vessel invasion in Specimen by CAP cancer protocols"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_LymphovaskuläreInvasionF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_LymphovaskuläreInvasionF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_LymphovaskuläreInvasionF_status", #final)
  // Tumornachweis in periprostatischem Binde- und Fettgewebe
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_TumornachweisInFettgewebeF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.34", #open-choice, "Tumornachweis in periprostatischem Binde- und Fettgewebe", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
              * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
              * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
              * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_TumornachweisInFettgewebeF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#44625-2 "Periprostatic fat invasion [Identifier] in Specimen by CAP cancer protocols"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_TumornachweisInFettgewebeF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_TumornachweisInFettgewebeF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_TumornachweisInFettgewebeF_status", #final)
  // Lokalisation Extraprostatische Tumorausbreitung
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_Tumorausbreitung", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11241", #open-choice, "Lokalisation Extraprostatische Tumorausbreitung", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
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
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_Tumorausbreitung_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#84902-6 "Extraprostatic extension site [Anatomy] of Prostate tumor"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_Tumorausbreitung_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_Tumorausbreitung_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_Tumorausbreitung_status", #final)
  // Intraduktales Karzinom
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_IntraduktalesKarzinomF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+]
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.4.11207", #open-choice, "Intraduktales Karzinom", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code = $sct#86616005 "Intraductal carcinoma, noninfiltrating (morphologic abnormality)"
              * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
              * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
              * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_IntraduktalesKarzinomF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $sct#86616005 "Intraductal carcinoma, noninfiltrating (morphologic abnormality)"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_IntraduktalesKarzinomF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_IntraduktalesKarzinomF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_IntraduktalesKarzinomF_status", #final)
  // ASAP
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_ASAPF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+] 
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.35", #open-choice, "ASAP", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
              * answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
              * answerOption[+].valueCoding = $sct#373066001 "Yes (qualifier value)"
              * answerOption[+].valueCoding = $sct#373068000 "Undetermined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_ASAPF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $sct#16294321000119104 "Atypical small acinar proliferation of prostate (disorder)"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_ASAPF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_ASAPF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_ASAPF_status", #final)
  // Begleitende High-grade-PIN
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_HighGradePINF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+] 
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.36", #open-choice, "Begleitende High-grade-PIN", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code[+] = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia"
              * code[+] = $sct#446711009 "High grade prostatic intraepithelial neoplasia (disorder)"
              * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
              * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
              * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_HighGradePINF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_HighGradePINF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_HighGradePINF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_HighGradePINF_status", #final)
  // Granulomatöse Prostatitis
          * item[+]
            * insert addExtractionContextGrouperNew("PathoFinding_GranulomatoeseProstatitisF", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation", #Observation)
            * item[+] 
              * insert addExtractionItem("2.16.840.1.113883.3.1937.777.18.2.37", #open-choice, "Granulomatöse Prostatitis", "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.valueCodeableConcept.coding")
              * code[+] = $loinc#94665-7 "Granulomatous prostatitis"
              * code[+] = $sct#61500009 "Granulomatous prostatitis (disorder)"
              * answerOption[+].valueCoding = $sct#52101004 "Present (qualifier value)"
              * answerOption[+].valueCoding = $sct#47492008 "Not seen (qualifier value)"
              * answerOption[+].valueCoding = $sct#1156316003 "Cannot be determined (qualifier value)"
            * item[+]
              * insert addExtractionHiddenItem("PathoFinding_GranulomatoeseProstatitisF_code", #choice, "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding#Observation.code.coding")  
              * initial.valueCoding = $loinc#94666-5 "High grade prostatic intraepithelial neoplasia"
            * item[+]
              * insert addPathoFindingLaboratoryCode("PathoFinding_GranulomatoeseProstatitisF_category_laboratory")
            * item[+]
              * insert addPathoFindingSectionCode("PathoFinding_GranulomatoeseProstatitisF_category_section", #22637-3)
            * item[+]
              * insert addPathoFindingStatusCode("PathoFinding_GranulomatoeseProstatitisF_status", #final)
