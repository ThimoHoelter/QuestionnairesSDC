Alias: $FHIR-version = http://hl7.org/fhir/FHIR-version
Alias: $loinc = http://loinc.org
Alias: $questionnaire-itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $sct = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: 2.16.840.1.113883.3.1937.777.18.27.16--20241221120534
InstanceOf: Questionnaire
Usage: #definition
* meta.lastUpdated = "2025-05-08T14:29:42Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* meta.tag = $FHIR-version#4.0.1
* language = #de-DE
* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* extension.valueUrl = "https://art-decor.org/fhir/4.0/public"
* url = "https://art-decor.org/fhir/Questionnaire/2.16.840.1.113883.3.1937.777.18.27.16--20241221120534"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.18.27.16"
* version = "0.9"
* name = "ICCR_Fragebogen_fur_Klinische_Angaben_bei_Prostata_Stanzbiopsien"
* title = "ICCR Fragebogen für Klinische Angaben bei Prostata-Stanzbiopsien"
* status = #draft
* experimental = false
* date = "2025-05-08T14:29:42Z"
* publisher = "Bundesverband Deutscher Pathologen e.V."
* contact.name = "Bundesverband Deutscher Pathologen e.V."
* contact.telecom.system = #url
* contact.telecom.value = "www.pathologie.de"
* copyright = "© Copyright 2017-2025 Berufsverband Deutscher Pathologinnen und Pathologen e.V. All rights reserved"
* approvalDate = "2024-12-21"
* effectivePeriod.start = "2024-12-21T12:05:34Z"
* item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.extension.valueBoolean = false
* item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10000"
* item.code = $loinc#66117-3 "Prostate Pathology biopsy report"
* item.text = "Prostatakarzinome"
* item.type = #group
* item.enableBehavior = #all
* item.required = true
* item.repeats = false
* item.readOnly = false
* item.item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.extension.valueBoolean = false
* item.item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10010"
* item.item.code = $loinc#22636-5 "Pathology report relevant history Narrative"
* item.item.text = "Klinische Angaben zur histopathologischen Untersuchung von Stanzbiopsien"
* item.item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.text.extension.valueMarkdown = "Klinische Angaben zur histopathologischen Untersuchung von Stanzbiopsien"
* item.item.type = #group
* item.item.enableBehavior = #all
* item.item.required = true
* item.item.repeats = false
* item.item.readOnly = false
* item.item.item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item.item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10010-help"
* item.item.item[=].text = "Es liegt in der Verantwortung des Klinikers, der die pathologische Untersuchung einer Probe anfordert, Informationen bereitzustellen, die sich auf den Diagnoseprozess auswirken oder dessen Interpretation beeinflussen. Die Verwendung eines standardmäßigen Pathologieanforderungs-/Anforderungsformulars einschließlich einer Checkliste wichtiger klinischer Informationen wird dringend empfohlen, um sicherzustellen, dass die Kliniker relevante klinische Daten mit der Probe bereitstellen. Informationen über frühere Biopsien oder Behandlungen helfen bei der Interpretation der mikroskopischen Befunde und einer genauen pathologischen Diagnose. Es gibt eine wachsende Zahl von Patienten mit Prostatakrebs mit niedrigem bis mittlerem Risiko, die einer aktiven Überwachung (AS) unterzogen werden.Die Aufnahme in die AS basiert auf günstigen klinischen Kriterien und pathologischen Elementen, die in diesen Prostatabiopsie-Datensätzen gemeldet werden. Diese Patienten werden normalerweise jährlich wiederholten Biopsien unterzogen, um auf Änderungen bei Elementen zu achten, die die Patienten neu klassifizieren und eine definitive Therapie rechtfertigen können. Eine Untergruppe neu klassifizierter oder für AS nicht geeigneter Patienten kann sich auch für eine Beobachtung (abwartendes Beobachten) entscheiden, und einige dieser Patienten werden möglicherweise noch Folgebiopsien unterzogen. Daher sollte der Kliniker den Gleason-Grad und -Score des Prostatakrebses in allen zuvor eingereichten Proben angeben, da so das Fortschreiten des Tumors beurteilt werden kann. Prostatakrebs kann auch mit nicht- oder minimal-invasiven Therapien wie Strahlen-, Hormon- oder Ablationstherapien behandelt werden. Strahlen- und endokrine Therapien bei Prostatakrebs haben eine starke Wirkung auf die Morphologie sowohl des Krebses als auch des gutartigen Prostatagewebes. Nach der Bestrahlung zeigt das gutartige Azinusepithel eine Kernvergrößerung und Nukleolusprominenz, während Basalzellen zytologische Atypien, Kernvergrößerungen und Kernverschmierungen aufweisen können. Auch kann es zu einer verstärkten Stromafibrose kommen, die einer tumorinduzierten Desmoplasie ähneln kann. Diese Veränderungen können längere Zeit anhalten (es wurden bis zu 72 Monate nach der Behandlung berichtet) und sind bei Patienten, die sich einer Brachytherapie unterzogen haben, stärker ausgeprägt als bei Patienten, die eine externe Strahlentherapie erhalten haben. Das Erscheinungsbild eines Tumors nach einer Strahlentherapie kann von fehlenden bis zu deutlichen histologischen Veränderungen variieren. Schwere Veränderungen zeigen infiltrative einzelne bis kleine Zellhaufen mit klarem oder blassem vakuolisiertem Zytoplasma und Kernen mit verschmiertem Chromatin oder prominenten Nukleoli. Es ist wichtig, jede vorherige Strahlentherapie zu dokumentieren, damit der Pathologe die Veränderungen richtig interpretieren kann. Ebenso kann eine neoadjuvante Androgenentzugstherapie (ADT) morphologische Veränderungen sowohl bei Prostatakrebs als auch bei gutartigem Gewebe hervorrufen.Eine Androgenblockade induziert eine Basalzellhyperplasie und zytoplasmatische Vakuolisierung in gutartigem Prostatagewebe, obwohl dies wahrscheinlich nicht mit einer bösartigen Erkrankung verwechselt werden kann. Aus diagnostischer Sicht noch bedeutsamer ist, dass eine neoadjuvante ADT das Risiko erhöhen kann, ein azinäres Adenokarzinom bei einer mikroskopischen Untersuchung mit geringer Vergrößerung zu übersehen, da die Drüsenlumina kollabieren, das Zytoplasma blass wird und die Kerne schrumpfen. Die Wirkung einer Androgenblockade auf Prostatakrebs ist variabel, und deutliche Veränderungen können zu einer irrtümlichen Hochstufung des Krebses führen. Daher sollten Tumoren, die bei Biopsien nach Strahlentherapie oder Androgenentzugstherapie eine signifikante Behandlungswirkung zeigen, nicht klassifiziert werden. Ablative Therapien werden zunehmend insbesondere bei Prostatakrebs mit mittlerem Risiko als Alternative zur Operation eingesetzt. Beispiele für diese minimalinvasiven Therapien sind hochintensiver fokussierter Ultraschall (HIFU), Kryotherapie, interstitielle Laserablation und photodynamische Therapie. Sie werden normalerweise durchgeführt, um einen Teil der Prostata zu zerstören (fokale Therapie oder Hemiablation), können aber auch zur Zerstörung der gesamten Drüse in einer Salvage-Therapie verwendet werden. Die behandelten Bereiche weisen klar abgegrenzte Bereiche mit Veränderungen auf, die auf Gewebeschäden zurückzuführen sind. Diese Veränderungen umfassen Nekrose, Stromafibrose, Entzündung und Blutung. Kenntnisse über das zuvor durchgeführte Verfahren sind ebenfalls wichtig, da insbesondere in nicht geschädigten Bereichen Resttumoren bestehen bleiben können. Anders als bei Strahlentherapie oder ADT kann bei den meisten Restkrebserkrankungen nach ablativen Therapien ein Graduierungsstatus ermittelt werden. Bei Prostatakrebs mit hohem Risiko oder fortgeschrittenem Stadium werden andere Therapien wie Chemotherapie und Immuntherapie durchgeführt, und bei diesen Patienten können nach der Behandlung auch Biopsien durchgeführt werden.Es können morphologische Veränderungen im Tumor auftreten, die die Bewertung des Grades beeinflussen können."
* item.item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.item[=].text.extension.valueMarkdown = "Es liegt in der Verantwortung des Klinikers, der die pathologische Untersuchung einer Probe anfordert, Informationen bereitzustellen, die sich auf den Diagnoseprozess auswirken oder dessen Interpretation beeinflussen. Die Verwendung eines standardmäßigen Pathologieanforderungs-/Anforderungsformulars                             einschließlich einer Checkliste wichtiger klinischer Informationen wird dringend empfohlen, um sicherzustellen, dass die Kliniker relevante klinische Daten mit der Probe bereitstellen. Informationen über frühere Biopsien oder Behandlungen helfen bei der Interpretation der mikroskopischen Befunde und einer genauen pathologischen Diagnose. Es gibt eine wachsende Zahl von                             Patienten mit Prostatakrebs mit niedrigem bis mittlerem Risiko, die einer aktiven Überwachung (AS) unterzogen werden.Die Aufnahme in die AS basiert auf günstigen klinischen Kriterien und pathologischen Elementen, die in diesen Prostatabiopsie-Datensätzen gemeldet werden. Diese Patienten werden normalerweise jährlich wiederholten Biopsien unterzogen, um auf Änderungen                             bei Elementen zu achten, die die Patienten neu klassifizieren und eine definitive Therapie rechtfertigen können. Eine Untergruppe neu klassifizierter oder für AS nicht geeigneter Patienten kann sich auch für eine Beobachtung (abwartendes Beobachten) entscheiden, und einige dieser Patienten werden möglicherweise noch Folgebiopsien unterzogen. Daher sollte der Kliniker                             den Gleason-Grad und -Score des Prostatakrebses in allen zuvor eingereichten Proben angeben, da so das Fortschreiten des Tumors beurteilt werden kann. Prostatakrebs kann auch mit nicht- oder minimal-invasiven Therapien wie Strahlen-, Hormon- oder Ablationstherapien behandelt werden. Strahlen- und endokrine Therapien bei Prostatakrebs haben eine starke Wirkung auf die                             Morphologie sowohl des Krebses als auch des gutartigen Prostatagewebes. Nach der Bestrahlung zeigt das gutartige Azinusepithel eine Kernvergrößerung und Nukleolusprominenz, während Basalzellen zytologische Atypien, Kernvergrößerungen und Kernverschmierungen aufweisen können. Auch kann es zu einer verstärkten Stromafibrose kommen, die einer tumorinduzierten Desmoplasie                             ähneln kann. Diese Veränderungen können längere Zeit anhalten (es wurden bis zu 72 Monate nach der Behandlung berichtet) und sind bei Patienten, die sich einer Brachytherapie unterzogen haben, stärker ausgeprägt als bei Patienten, die eine externe Strahlentherapie erhalten haben. Das Erscheinungsbild eines Tumors nach einer Strahlentherapie kann von fehlenden bis zu                             deutlichen histologischen Veränderungen variieren. Schwere Veränderungen zeigen infiltrative einzelne bis kleine Zellhaufen mit klarem oder blassem vakuolisiertem Zytoplasma und Kernen mit verschmiertem Chromatin oder prominenten Nukleoli. Es ist wichtig, jede vorherige Strahlentherapie zu dokumentieren, damit der Pathologe die Veränderungen richtig interpretieren kann.                             Ebenso kann eine neoadjuvante Androgenentzugstherapie (ADT) morphologische Veränderungen sowohl bei Prostatakrebs als auch bei gutartigem Gewebe hervorrufen.Eine Androgenblockade induziert eine Basalzellhyperplasie und zytoplasmatische Vakuolisierung in gutartigem Prostatagewebe, obwohl dies wahrscheinlich nicht mit einer bösartigen Erkrankung verwechselt werden kann.                             Aus diagnostischer Sicht noch bedeutsamer ist, dass eine neoadjuvante ADT das Risiko erhöhen kann, ein azinäres Adenokarzinom bei einer mikroskopischen Untersuchung mit geringer Vergrößerung zu übersehen, da die Drüsenlumina kollabieren, das Zytoplasma blass wird und die Kerne schrumpfen. Die Wirkung einer Androgenblockade auf Prostatakrebs ist variabel, und deutliche                             Veränderungen können zu einer irrtümlichen Hochstufung des Krebses führen. Daher sollten Tumoren, die bei Biopsien nach Strahlentherapie oder Androgenentzugstherapie eine signifikante Behandlungswirkung zeigen, nicht klassifiziert werden. Ablative Therapien werden zunehmend insbesondere bei Prostatakrebs mit mittlerem Risiko als Alternative zur Operation eingesetzt.                             Beispiele für diese minimalinvasiven Therapien sind hochintensiver fokussierter Ultraschall (HIFU), Kryotherapie, interstitielle Laserablation und photodynamische Therapie. Sie werden normalerweise durchgeführt, um einen Teil der Prostata zu zerstören (fokale Therapie oder Hemiablation), können aber auch zur Zerstörung der gesamten Drüse in einer Salvage-Therapie                             verwendet werden. Die behandelten Bereiche weisen klar abgegrenzte Bereiche mit Veränderungen auf, die auf Gewebeschäden zurückzuführen sind. Diese Veränderungen umfassen Nekrose, Stromafibrose, Entzündung und Blutung. Kenntnisse über das zuvor durchgeführte Verfahren sind ebenfalls wichtig, da insbesondere in nicht geschädigten Bereichen Resttumoren bestehen bleiben                             können. Anders als bei Strahlentherapie oder ADT kann bei den meisten Restkrebserkrankungen nach ablativen Therapien ein Graduierungsstatus ermittelt werden. Bei Prostatakrebs mit hohem Risiko oder fortgeschrittenem Stadium werden andere Therapien wie Chemotherapie und Immuntherapie durchgeführt, und bei diesen Patienten können nach der Behandlung auch Biopsien                             durchgeführt werden.Es können morphologische Veränderungen im Tumor auftreten, die die Bewertung des Grades beeinflussen können."
* item.item.item[=].type = #display
* item.item.item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item.item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension[=].valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension[=].valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].code = $sct#125156009 "Satisfactory for evaluation but limited by lack of pertinent clinical patient information (finding)"
* item.item.item[=].text = "Proben limitiert auswertbar wegen fehlender klinischer Informationen"
* item.item.item[=].type = #choice
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = true
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14001|2018-02-10T00:00:00"
* item.item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension.valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10110"
* item.item.item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:anamnesis"
* item.item.item[=].code[0] = $loinc#11450-4 "Problem list - Reported"
* item.item.item[=].code[+] = $loinc#10164-2 "History of Present illness Narrative"
* item.item.item[=].text = "Anamnestische Angaben"
* item.item.item[=].type = #text
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = true
* item.item.item[=].readOnly = false
* item.item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10110-help"
* item.item.item[=].item.text = "Frühere Prostatakrebserkrankungen (einschließlich des Gleason-Scores oder WHO/ISUP-Grades/Grades der früheren Proben, sofern bekannt, und wenn der Patient in \"active surveillance\" ist), angeben."
* item.item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.item[=].item.text.extension.valueMarkdown = "Frühere Prostatakrebserkrankungen (einschließlich des Gleason-Scores oder WHO/ISUP-Grades/Grades der früheren Proben, sofern bekannt, und wenn der Patient in \"active surveillance\" ist), angeben."
* item.item.item[=].item.type = #display
* item.item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension.valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10120"
* item.item.item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:anamnesis"
* item.item.item[=].code[0] = $loinc#28636-9 "Initial evaluation note"
* item.item.item[=].code[+] = $loinc#90013-4 "Clinical pathology Initial evaluation note"
* item.item.item[=].text = "Vorbefunde"
* item.item.item[=].type = #text
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = true
* item.item.item[=].readOnly = false
* item.item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension.valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10150"
* item.item.item[=].code = $sct#426274002 "Type of preoperative treatment (observable entity)"
* item.item.item[=].text = "Angaben zur Tumorbehandlung vor (operativer) Therapie"
* item.item.item[=].type = #group
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[=].item[0].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].item[=].extension[=].valueBoolean = false
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10160"
* item.item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:anamnesis"
* item.item.item[=].item[=].code = $sct#394894008 "Pre-operative chemotherapy (procedure)"
* item.item.item[=].item[=].text = "Vorbehandlung durch Chemotherapie"
* item.item.item[=].item[=].type = #choice
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = false
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002|2018-02-10T00:00:00"
* item.item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].item[=].extension[=].valueBoolean = false
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10170"
* item.item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:anamnesis"
* item.item.item[=].item[=].code = $sct#168523002 "Preoperative course of radiotherapy (procedure)"
* item.item.item[=].item[=].text = "Vorbehandlung durch Radiotherapie"
* item.item.item[=].item[=].type = #choice
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = false
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002|2018-02-10T00:00:00"
* item.item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].item[=].extension[=].valueBoolean = false
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10180"
* item.item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:anamnesis"
* item.item.item[=].item[=].code = $sct#707266006 "Androgen deprivation therapy (procedure)"
* item.item.item[=].item[=].text = "Vorbehandlung durch Totale Androgenentzugstherapie"
* item.item.item[=].item[=].type = #choice
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = false
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14002|2018-02-10T00:00:00"
* item.item.item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item.item[=].extension[=].valueCoding = $unitsofmeasure#ng/ml "ng/ml"
* item.item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item.item.item[=].extension[=].valueInteger = 3
* item.item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension[=].valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10130"
* item.item.item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:Observation.code"
* item.item.item[=].code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* item.item.item[=].text = "Angaben zur PSA-Serologie"
* item.item.item[=].type = #quantity
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10130-help"
* item.item.item[=].item.text = "Der Arzt, der die pathologische Untersuchung anfordert, sollte Angaben zum Serumspiegel des prostataspezifischen Antigens (PSA) vor der Biopsie machen.Die Verwendung eines standardmäßigen Pathologie-Anforderungsformulars mit einer Checkliste wichtiger klinischer Informationen wird dringend empfohlen, um sicherzustellen, dass die Ärzte wichtige klinische Daten mit der Probe liefern. Trotz Kritik am Nutzen eines PSA-basierten Prostatakrebs-Screenings werden die meisten Prostatakrebserkrankungen bei asymptomatischen Männern auf der Grundlage von PSA-Tests erkannt. Obwohl PSA-Werte einen gewissen Hinweis auf die Wahrscheinlichkeit geben, bei einer Prostatabiopsie Krebs zu entdecken, sollte eine Diagnose von Malignität auf histologischen Befunden basieren und nicht durch PSA-Werte beeinflusst werden. Darüber hinaus ist der Serum-PSA-Wert ein wichtiger Parameter in einigen Nomogrammen, die häufig zur präoperativen Vorhersage der pathologischen T-Kategorie von Prostatakrebs der Union of International Cancer Control (UICC)/American Joint Committee on Cancer (AJCC) oder des Rezidivrisikos nach radikaler Prostatektomie verwendet werden und als Orientierung für die klinische Entscheidungsfindung hinsichtlich der Behandlung der Krankheit dienen. Der Serum-PSA-Wert wird neben nachfolgenden Biopsiebefunden zur Risikostratifizierung verwendet, die als Orientierung für die Wahl der Behandlung dient. Wenn der Patient 5-Alpha-Reduktasehemmer wie Finasterid oder Dutasterid einnimmt, sollte dies dokumentiert werden, da es den Serum-PSA-Spiegel senken und die Interpretation der Serum-PSA-Werte zur Erkennung von Prostatakrebs beeinflussen kann."
* item.item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.item[=].item.text.extension.valueMarkdown = "Der Arzt, der die pathologische Untersuchung anfordert, sollte Angaben zum Serumspiegel des prostataspezifischen Antigens (PSA) vor der Biopsie machen.Die Verwendung eines standardmäßigen Pathologie-Anforderungsformulars mit einer Checkliste wichtiger klinischer Informationen wird dringend                                 empfohlen, um sicherzustellen, dass die Ärzte wichtige klinische Daten mit der Probe liefern. Trotz Kritik am Nutzen eines PSA-basierten Prostatakrebs-Screenings werden die meisten Prostatakrebserkrankungen bei asymptomatischen Männern auf der Grundlage von PSA-Tests erkannt. Obwohl PSA-Werte einen gewissen Hinweis auf die Wahrscheinlichkeit geben, bei einer                                 Prostatabiopsie Krebs zu entdecken, sollte eine Diagnose von Malignität auf histologischen Befunden basieren und nicht durch PSA-Werte beeinflusst werden. Darüber hinaus ist der Serum-PSA-Wert ein wichtiger Parameter in einigen Nomogrammen, die häufig zur präoperativen Vorhersage der pathologischen T-Kategorie von Prostatakrebs der Union of International Cancer                                 Control (UICC)/American Joint Committee on Cancer (AJCC) oder des Rezidivrisikos nach radikaler Prostatektomie verwendet werden und als Orientierung für die klinische Entscheidungsfindung hinsichtlich der Behandlung der Krankheit dienen. Der Serum-PSA-Wert wird neben nachfolgenden Biopsiebefunden zur Risikostratifizierung verwendet, die als Orientierung für die Wahl                                 der Behandlung dient. Wenn der Patient 5-Alpha-Reduktasehemmer wie Finasterid oder Dutasterid einnimmt, sollte dies dokumentiert werden, da es den Serum-PSA-Spiegel senken und die Interpretation der Serum-PSA-Werte zur Erkennung von Prostatakrebs beeinflussen kann."
* item.item.item[=].item.type = #display
* item.item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension.valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10140"
* item.item.item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:anamnesis"
* item.item.item[=].code[0] = $loinc#75620-5 "TNM clinical staging before treatment panel Cancer"
* item.item.item[=].code[+] = $sct#385349001 "Clinical stage (observable entity)"
* item.item.item[=].text = "Klinisches Stadium"
* item.item.item[=].type = #text
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10140-help"
* item.item.item[=].item.text = "Neben dem prostataspezifischen Antigen (PSA) im Serum vor der Biopsie ist das klinische Stadium ein wichtiger Parameter in einigen Nomogrammen, die häufig zur präoperativen Vorhersage der pathologischen T-Kategorie von Prostatakrebs und als Orientierung für klinische Entscheidungen im Hinblick auf die Behandlung der Krankheit verwendet werden."
* item.item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.item[=].item.text.extension.valueMarkdown = "Neben dem prostataspezifischen Antigen (PSA) im Serum vor der Biopsie ist das klinische Stadium ein wichtiger Parameter in einigen Nomogrammen, die häufig zur präoperativen Vorhersage der pathologischen T-Kategorie von Prostatakrebs und als Orientierung für klinische Entscheidungen im Hinblick auf                                 die Behandlung der Krankheit verwendet werden."
* item.item.item[=].item.type = #display
* item.item.item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension[=].valueCodeableConcept = $questionnaire-itemControl#radio-button "Radio button"
* item.item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension[=].valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.51"
* item.item.item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request#ServiceRequest.supportingInfo:Observation.code"
* item.item.item[=].code = $sct#2620001000004108 "Specimen collection procedure (observable entity)"
* item.item.item[=].text = "Biopsiedurchführung"
* item.item.item[=].type = #open-choice
* item.item.item[=].enableWhen.question = "2.16.840.1.113883.3.1937.777.18.2.27"
* item.item.item[=].enableWhen.operator = #=
* item.item.item[=].enableWhen.answerCoding = $sct#373067005 "Nein"
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = false
* item.item.item[=].repeats = false
* item.item.item[=].readOnly = false
* item.item.item[=].answerOption[0].valueString = "Systematisch"
* item.item.item[=].answerOption[+].valueString = "Gezielt"
* item.item.item[=].answerOption[+].valueString = "Andere (z.B. Sättigungsbiopsie, bitte spezifizieren)"
* item.item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.51-help"
* item.item.item[=].item.text = "Die Nadelbiopsie der Prostata wird üblicherweise systematisch (transrektal oder transperineal) durchgeführt, indem mithilfe einer Schablone an mehreren Stellen Proben entnommen werden. Die erweiterte (oder standardmäßige) Entnahmetechnik mit mindestens 12 Stellen wird mittlerweile der Sextantenbiopsie (6 Stellen) vorgezogen, da sie eine höhere Krebserkennungsrate ermöglicht. Falls die Bildgebung eine verdächtige Läsion anzeigt, kann auch eine gezielte Biopsie mittels Magnetresonanztomographie (MRT) durchgeführt werden. Eine gezielte Biopsie erhöht die Chance, klinisch signifikante Krebserkrankungen zu entnehmen. In seltenen Fällen wird eine Sättigungsbiopsie durchgeführt, bei der pro Prostatabereich eine größere Zahl von Stanzen entnommen wird, um die Krebserkennung zu verbessern.Gelegentlich werden bei Patienten, bei denen der starke Verdacht auf höhergradigen Krebs besteht, nur begrenzte Proben zur histologischen Bestätigung entnommen, bevor eine definitive Therapie begonnen wird. Kenntnisse über das Biopsieverfahren, ob systematisch oder gezielt, und über die Anzahl der an jeder Stelle entnommenen Biopsiezylinder helfen bei der pathologischen Beurteilung der betroffenen Stanzen."
* item.item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.item[=].item.text.extension.valueMarkdown = "Die Nadelbiopsie der Prostata wird üblicherweise systematisch (transrektal oder transperineal) durchgeführt, indem mithilfe einer Schablone an mehreren Stellen Proben entnommen werden. Die erweiterte (oder standardmäßige) Entnahmetechnik mit mindestens 12 Stellen wird mittlerweile der                                 Sextantenbiopsie (6 Stellen) vorgezogen, da sie eine höhere Krebserkennungsrate ermöglicht. Falls die Bildgebung eine verdächtige Läsion anzeigt, kann auch eine gezielte Biopsie mittels Magnetresonanztomographie (MRT) durchgeführt werden. Eine gezielte Biopsie erhöht die Chance, klinisch signifikante Krebserkrankungen zu entnehmen. In seltenen Fällen wird eine                                 Sättigungsbiopsie durchgeführt, bei der pro Prostatabereich eine größere Zahl von Stanzen entnommen wird, um die Krebserkennung zu verbessern.Gelegentlich werden bei Patienten, bei denen der starke Verdacht auf höhergradigen Krebs besteht, nur begrenzte Proben zur histologischen Bestätigung entnommen, bevor eine definitive Therapie begonnen wird. Kenntnisse über das                                 Biopsieverfahren, ob systematisch oder gezielt, und über die Anzahl der an jeder Stelle entnommenen Biopsiezylinder helfen bei der pathologischen Beurteilung der betroffenen Stanzen."
* item.item.item[=].item.type = #display
* item.item.item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].extension.valueBoolean = false
* item.item.item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10060"
* item.item.item[=].code = $sct#1149283006 "Tissue specimen observable (observable entity)"
* item.item.item[=].text = "Angaben zur Herkunft und Eigenschaften von Proben"
* item.item.item[=].type = #group
* item.item.item[=].enableBehavior = #all
* item.item.item[=].required = true
* item.item.item[=].repeats = true
* item.item.item[=].readOnly = false
* item.item.item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item.item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10060-help"
* item.item.item[=].item[=].text = "Informationen zu den zur histopathologischen Untersuchung eingereichten Proben, einschließlich Ort, Anzahl der Stanzzylinder und Länge der Stanzen, gelten als integraler und wesentlicher Bestandteil eines Pathologieberichts. Die Länge der Stanzen sollte in der feuchten Probe vor der Gewebeverarbeitung und Paraffineinbettung gemessen werden. Beachten Sie, dass für die Berichterstattung auf Probenebene nur Angaben zu der einzelnen Probe erforderlich sind. Vorzugsweise sollten sich in jedem Probengefäß nicht mehr als zwei Stanzen befinden. Wenn jedoch eine gewisse Fragmentierung vorliegt und mehrere Stanzen in einem Behälter eingereicht werden, ist es möglicherweise nicht möglich, die Anzahl der betroffenen Stanzen zuverlässig zu bestimmen. In dieser Situation sollte der Urologe auf dem Pathologieanforderungsformular angeben, wie viele Stanzen in jedem Gefäß eingereicht wurden, um zu vermeiden, dass Fragmente der einen Stanze als separate Stanzen gezählt werden (insbesondere bei Stanzen mit einer Länge von <6 Millimetern) und irreführende Informationen zum Tumorausmaß geliefert werden. Wenn mehr als fünf Stanzen in einem Probengefäß eingereicht werden, z. B. bei Sättigungs-/Schablonenbiopsien, kann ein Bereich für die Länge der Stanzen angegeben werden, anstatt jeden einzeln zu messen. Pathologen sollten proaktiv mit den Urologen, die die Proben entnehmen, die optimale Vorgehensweise bei der Einsendung von Prostatabiopsieproben besprechen."
* item.item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.item[=].item[=].text.extension.valueMarkdown = "Informationen zu den zur histopathologischen Untersuchung eingereichten Proben, einschließlich Ort, Anzahl der Stanzzylinder und Länge der Stanzen, gelten als integraler und wesentlicher Bestandteil eines Pathologieberichts. Die Länge der Stanzen sollte in der feuchten Probe vor der                                 Gewebeverarbeitung und Paraffineinbettung gemessen werden. Beachten Sie, dass für die Berichterstattung auf Probenebene nur Angaben zu der einzelnen Probe erforderlich sind. Vorzugsweise sollten sich in jedem Probengefäß nicht mehr als zwei Stanzen befinden. Wenn jedoch eine gewisse Fragmentierung vorliegt und mehrere Stanzen in einem Behälter eingereicht werden,                                 ist es möglicherweise nicht möglich, die Anzahl der betroffenen Stanzen zuverlässig zu bestimmen. In dieser Situation sollte der Urologe auf dem Pathologieanforderungsformular angeben, wie viele Stanzen in jedem Gefäß eingereicht wurden, um zu vermeiden, dass Fragmente der einen Stanze als separate Stanzen gezählt werden (insbesondere bei Stanzen mit einer Länge von                                 <6 Millimetern) und irreführende Informationen zum Tumorausmaß geliefert werden. Wenn mehr als fünf Stanzen in einem Probengefäß eingereicht werden, z. B. bei Sättigungs-/Schablonenbiopsien, kann ein Bereich für die Länge der Stanzen angegeben werden, anstatt jeden einzeln zu messen. Pathologen sollten proaktiv mit den Urologen, die die Proben entnehmen, die                                 optimale Vorgehensweise bei der Einsendung von Prostatabiopsieproben besprechen."
* item.item.item[=].item[=].type = #display
* item.item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].item[=].extension.valueBoolean = false
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.65"
* item.item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.identifier.value"
* item.item.item[=].item[=].code[0] = $loinc#80398-1 "Unique identifier for Current sample"
* item.item.item[=].item[=].code[+] = $sct#372274003 "Sample identification number (observable entity)"
* item.item.item[=].item[=].text = "Proben-ID (-bezeichnung)"
* item.item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item.item[=].item[=].text.extension.extension[0].url = "lang"
* item.item.item[=].item[=].text.extension.extension[=].valueCode = #en-US
* item.item.item[=].item[=].text.extension.extension[+].url = "content"
* item.item.item[=].item[=].text.extension.extension[=].valueString = "Specimen ID"
* item.item.item[=].item[=].type = #string
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item.item.item[=].item[=].extension[=].valueUrl = "https://art-decor.org/fhir/4.0/public"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].item[=].extension[=].valueBoolean = false
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10070"
* item.item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.collection.bodySite.coding"
* item.item.item[=].item[=].code = $loinc#94738-2 "Biopsy site"
* item.item.item[=].item[=].text = "Lokalisation der Entnahmestelle"
* item.item.item[=].item[=].type = #open-choice
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[=].answerValueSet = "https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.18.11.14004"
* item.item.item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].item[=].extension.valueBoolean = false
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10050"
* item.item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.container.specimenQuantity.value"
* item.item.item[=].item[=].code = $loinc#44652-6 "Total # of cores Tissue Core"
* item.item.item[=].item[=].text = "Anzahl der Stanzzylinder"
* item.item.item[=].item[=].type = #integer
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false
* item.item.item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item.item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item.item[=].item[=].item.linkId = "2.16.840.1.113883.3.1937.777.18.2.4.10050-help"
* item.item.item[=].item[=].item.text = "Vorzugsweise sollten sich in jedem Probengefäß nicht mehr als zwei Stanzen befinden. Wenn jedoch eine gewisse Fragmentierung vorliegt und mehrere Stanzen in einem Behälter eingereicht werden, ist es möglicherweise nicht möglich, die Anzahl der betroffenen Stanzen zuverlässig zu bestimmen. In dieser Situation sollte der Urologe auf dem Pathologieanforderungsformular angeben, wie viele Stanzen in jedem Gefäß eingereicht wurden, um zu vermeiden, dass Fragmente der einen Stanze als separate Stanzen gezählt werden (insbesondere bei Stanzen mit einer Länge von <6 Millimetern) und irreführende Informationen zum Tumorausmaß geliefert werden. "
* item.item.item[=].item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item.item[=].item[=].item.text.extension.valueMarkdown = "Vorzugsweise sollten sich in jedem Probengefäß nicht mehr als zwei Stanzen befinden. Wenn jedoch eine gewisse Fragmentierung vorliegt und mehrere Stanzen in einem Behälter eingereicht werden, ist es möglicherweise nicht möglich, die Anzahl der betroffenen Stanzen zuverlässig zu bestimmen. In                                     dieser Situation sollte der Urologe auf dem Pathologieanforderungsformular angeben, wie viele Stanzen in jedem Gefäß eingereicht wurden, um zu vermeiden, dass Fragmente der einen Stanze als separate Stanzen gezählt werden (insbesondere bei Stanzen mit einer Länge von <6 Millimetern) und irreführende Informationen zum Tumorausmaß geliefert                                 werden. "
* item.item.item[=].item[=].item.type = #display
* item.item.item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item.item.item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm "mm"
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item.item.item[=].item[=].extension[=].valueInteger = 2
* item.item.item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item.item[=].item[=].extension[=].valueBoolean = false
* item.item.item[=].item[=].linkId = "2.16.840.1.113883.3.1937.777.18.2.4.11208"
* item.item.item[=].item[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen#Specimen.collection.quantity.value"
* item.item.item[=].item[=].code = $loinc#44619-5 "Length of tissue core(s)"
* item.item.item[=].item[=].text = "Länge der Stanzzylinder"
* item.item.item[=].item[=].type = #quantity
* item.item.item[=].item[=].enableBehavior = #all
* item.item.item[=].item[=].required = true
* item.item.item[=].item[=].repeats = false
* item.item.item[=].item[=].readOnly = false