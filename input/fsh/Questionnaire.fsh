Instance: BeispielQuestionnaire
InstanceOf: Questionnaire
* url = "http://example.org/fhir/Questionnaire/BeispielQuestionnaire"
* version = "0.1"
* title = "Hallo Welt!"
* status = #draft
* insert launchContext("patient", #Patient, "Patientenkontext")
// Hier fangen die Items an
* item[+]
  * linkId = "demografie"
  * text = "Demografische Daten:"
  * type = #group
  * item[+] insert stringItem("vorname", "Vorname:")
    * required = true
    * repeats = true
    * insert initialExpression([["%patient.name[0].given[0]"]], "Erster Vorname des ersten Namens des Patienten.")
  * item[+] insert stringItem("nachname", "Nachname:")
    * required = true
    * insert initialExpression([["%patient.name[0].family"]], "Nachname des ersten Namens des Patienten.")

* item[+]
  * linkId = "koerpermasse"
  * text = "Körpermaße:"
  * type = #group  
  * item[+] insert decimalItem("koerpergroesse", "Körpergröße:", #m, 2)
    * code = http://loinc.org#8302-2 "Body Height"
    * insert minMaxDecimal(0.1, 2.7)
    * insert entryFormat("x.xx")
    * insert observationExtract
    * insert observationLinkPeriod(1 'w')
    * item[+] 
      * linkId = "gewicht-plausi"
      * type = #display
      * text = "Sind Sie sicher?"
      * enableWhen[+]
        * question = "koerpergroesse"
        * operator = #>
        * answerDecimal = 2.10
      * enableWhen[+]
        * question = "koerpergroesse"
        * operator = #<
        * answerDecimal = 1.30
      * enableBehavior = #any
    //* insert regEx([["[0-9](/.[0-9]{1,2})?"]]) 
    * item[+]
      * linkId = "koerpergroesse-hilfe"
      * type = #display
      * text = "Bitte geben Sie die Körpergröße in Metern an."
      * insert itemControl(#help)
  * item[+] insert decimalItem("koerpergewicht", "Körpergewicht:", #kg, 3)
    * code = http://loinc.org#29463-7 "Body Weight"
    * insert minMaxDecimal(0.1, 600)
    * insert entryFormat("xxx.xx")
    * insert observationExtract
    * insert observationLinkPeriod(1 'w')
    //* insert regEx([["[0-9](/.[0-9]{1,2})?"]]) 



RuleSet: decimalItem(id, text, unit, maxplace)
* linkId = {id}
* type = #decimal
* text = {text}
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * valueCoding = $unitsofmeasure{unit}
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
  * valueInteger = {maxplace}


