Alias: $loinc = http://loinc.org
Alias: $gender = http://hl7.org/fhir/administrative-gender



Instance: QuestionnaireDemo
InstanceOf: Questionnaire

//Etablieren des Patientenkontextes aus SMART-Launch
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* title = "Questionnaire Feature Demo (LHC kompatibel)"
* description = "Beispiel-Questionnaire zur Demonstration diverser SDC Funktionalitäten, z.B. Prepopulation, Extraction, Advanced Rendering"
* url = "http://gefyra.de/fhir/sdc/Questionnaire/Demo"
//Teil1: Demografische Patientendaten
* item[+]
  * type = #group
  * required = true
  * linkId = "1"
  * text = "Angaben zur Person"
  * item[+]
    * type = #string
    * linkId = "1.1"
    * text = "Vorname:"
    //Vorbelegung mit Vorname aus Patientenkontext
    * insert initialExpression("%patient.name[0].given[0]", "erster Vorname im ersten Namen des Patienten")
  * item[+]
    * type = #string
    * linkId = "1.2"
    * text = "Nachname:"
    //Vorbelegung mit Nachname aus Patientenkontext
    * insert initialExpression("%patient.name[0].family", "Nachname im ersten Namen des Patienten")
//Vorbelegung mit Konkatenation und alternativen Expressions
  * item[+]
    * insert addRItem("1.2a", #string, "Name") 
    * insert initialExpression([["(%patient.name.where(use = 'official').select(given[0]+' '+family) | %patient.name[0].select(given[0]+' '+family)).first()"]], [["Konkatentation aus Vor- und Nachname des Patienten. Präferiert aus offiziellem Namen, alternativ erster Name"]])  

  * item[+]
    * type = #choice
    * linkId = "1.3"
    * text = "Geschlecht:"
    * answerOption[+].valueCoding = $gender#male "männlich"
    * answerOption[+].valueCoding = $gender#female "weiblich"
    //Vorbelegung mit Geschlechts-Code aus Patientenkontext
    * insert initialExpression([["%questionnaire.repeat(item).where(linkId='1.3').answerOption.value.where(code=%patient.gender)"]], [["Geschlecht des Patienten, gemappt von Code auf Coding der Antwortoptionen"]])
  * item[+]
    * type = #string
    * linkId = "1.4"
    * text = "Versichertennummer:"
    //Validierung der Versichertennummer gegen RegEx-Pattern (muss für LHC mit /.../ eingerahmt werden!)
    * insert regEx([["/^[A-Z][0-9]{9}$/"]])
    //Hilfe-Text hinzufügen
    * item[+]
      * linkId = "1.4.0"
      * type = #display
      * text = "Des was vonne unne uffm Kärtle steht!"
      * insert itemControl(#help)
  //Verwendung von ElementDefinitions (unsupported)
  //* item[+]
  //  * linkId = "1.5"
  //  * type = #choice
  //  * definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.maritalStatus"

//Teil 2: Bedingte Fragestellungen
* item[+]
  * type = #group
  * linkId = "2"
  * text = "Fragen zum Wohlbefinden"
  * item[+]
    * type = #choice
    * linkId = "2.1"
    * text = "Wie geht's?"
    * answerOption[+].valueCoding.display = "gut."
    * answerOption[+].valueCoding.display = "geht."
    * answerOption[+].valueCoding.display = "muss."
    //Darstellung als Radio-Buttons statt Drop-Down-Liste
    * insert itemControl(#radio-button)
  * item[+]
    * type = #choice
    * linkId = "2.2"
    * text = "Was ist denn los?"
    * answerOption[+]
      * valueCoding.display = "Nix."
      //Annotation der Option mit Punktwerten
      * insert ordinalValue(3)
    * answerOption[+]
      * valueCoding.display = "Frag nicht!"
      //Annotation der Option mit Punktwerten
      * insert ordinalValue(5)
    * enableWhen
      * question = "2.1"
      * operator = #=
      * answerCoding.display = "muss."
  * item[+]
    * type = #decimal
    * linkId = "2.3"
    * text = "Schlechte-Laune-Punkte"
    //Berechnung des Scores
    * insert calculatedExpression("schlechte-laune-punkte", [["%questionnaire.repeat(item).where(linkId = '2.2').answerOption.where(valueCoding.display=%resource.repeat(item).where(linkId = '2.2').answer.valueCoding.display).extension.where(url='http://hl7.org/fhir/StructureDefinition/ordinalValue').valueDecimal"]])
    * readOnly = true 


//Teil 3: Pflegegrad
* item[+]
  * type = #group
  * required = true
  * linkId = "3"
  * text = "Pflegegrad"
  * item[+]
    //Anzeige eines Links mit weiteren Hinweisen (von LHC aktuell nicht unterstützt)
    * insert supportLink("https://ig.fhir.de/basisprofile-de/stable/Ressourcen-BeobachtungenMessungenObservation.html#Ressourcen-Observation-Pflegegrad")
    * type = #choice
    * linkId = "3.1"
    * text = "Bitte geben Sie den Pflegegrad an:"
    //Code für die Extraktion in die Observation
    * code = $loinc#80391-6
    //Alter bis zu dem passende Observations für die Vorbelegung akzeptiert werden
    * insert observationLinkPeriod(1 'a')
    //Aktivierung der Extraction
    * insert observationExtract
    //Referenz auf das eingebettete (contained) ValueSet
    * answerValueSet = "#valueset-pflegegrad-de"
//Einbetten des ValueSets 
* contained = valueset-pflegegrad-de
  
//Teil 4: BMI Berechnung
* item[+]
  * type = #group
  * required = false
  * linkId = "4"
  * text = "BMI-Berechnung"
  * item[+]  
    //Annotation mit codierter Maßeinheit
    * insert uunit(kg)
    * linkId = "4.1"
    * text = "Körpergewicht in kg (muss zwischen 20 und 300kg liegen)"
    * type = #decimal
    * insert minMaxDecimal (20,300)
  * item[+]  
    //Annotation mit codierter Maßeinheit
    * insert uunit(m)
    //Anzeige einer Formatvorlage für die Eingabe
    * insert entryFormat("x.xx")
    * linkId = "4.2"
    * text = "Körpergröße in m (muss zwischen 1 und 2.50 liegen)"
    * type = #decimal
    * insert minMaxDecimal (1,2.5)
  * item[+]
    //Berechnung und Vorbelegung des Feldes
    * insert calculatedExpression("BMI", [["(%weight/(%height.power(2))).round(1)"]])
    //Maßeinheit, die für die Extraktion in die Observation verwendet wird
    * insert uunit(kg/m2)
    //Code für die Extraktion in die Observation
    * code = $loinc#39156-5
    * linkId = "4.3"
    * text = "BMI"
    * type = #decimal
    //Feld darf nicht vom User beschrieben werden.
    * readOnly = true 
    //Aktivierung der Extraction 
    * insert observationExtract
    * item[+]
      * linkId = "4.3.1"
      * type = #string
      * readOnly = true
      * initial.valueString = "Sie haben Untergewicht."
      * text = "Einschätzung:"
      * enableWhen[+] 
        * question = "4.3"
        * operator = #<
        * answerDecimal = 18.5
    * item[+]
      * linkId = "4.3.2"
      * type = #string
      * readOnly = true
      * text = "Einschätzung:"
      * initial.valueString = "Sie haben Normalgewicht."
      * enableWhen[+] 
        * question = "4.3"
        * operator = #>=
        * answerDecimal = 18.5
      * enableWhen[+] 
        * question = "4.3"
        * operator = #<=
        * answerDecimal = 24.9
      * enableBehavior = #all
    * item[+]
      * linkId = "4.3.3"
      * type = #string
      * readOnly = true
      * text = "Einschätzung:"
      * initial.valueString = "Sie haben Übergewicht."
      * enableWhen[+] 
        * question = "4.3"
        * operator = #>=
        * answerDecimal = 25
//Deklaration der Variablen, die für die BMI-Berechnung benötigt werden
* insert variable("weight", [["%resource.repeat(item).where(linkId='4.1').answer.value"]])
* insert variable("height", [["%resource.repeat(item).where(linkId='4.2').answer.value"]])

//Mehrfachantworten in Tabellenform mit gtable
* item[+]
  * insert addItem("wohn-group", #group, "Wohnsituation")
  * repeats = true
  * insert itemControl(#gtable)
  * item[+]
    * insert addItem("wohn-ort", #string, "Adresse")
  * item[+]
    * insert addItem("wohn-von", #date, "Wohnhaft von")
  * item[+]
    * insert addItem("wohn-bis", #date, "Wohnhaft bis")




//Diverse weitere itemControl-Optionen
* item[+]
  * insert addItem("fav", #group, "Favoriten")
  //AutoComplete
  * item[+]
    * insert addItem("item-ctl", #choice, "Welches ist dein liebstes Item?")
    * insert itemControl(#autocomplete)
    * answerValueSet = "http://hl7.org/fhir/ValueSet/questionnaire-item-control"
  //Check-Box
  * item[+]
    * insert addItem("kaffee", #choice, "Kaffee?")
    * insert itemControl(#check-box)
    * answerOption[+].valueCoding.display = "mit Milch"
    * answerOption[+].valueCoding.display = "Mit Zucker"
    * answerOption[+].valueCoding.display = "Koffeinfrei"
    * repeats = true
 

