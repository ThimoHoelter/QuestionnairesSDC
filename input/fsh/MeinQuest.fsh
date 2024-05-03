Instance: MeinQuestionnaire
InstanceOf: Questionnaire
* url = "http://example.org/fhir/Questionnaire/MeinQuestionnaire"
* version = "0.1"
* title = "Formular"
* status = #draft
* insert launchContext("patient", #Patient, "Patientenkontext")

* item[+]
  * linkId = "Name.V"
  * text = "Geben Sie bitte ihren Vornamen ein."
  * code = http://loinc.org#97848-6 "First (Given) name Person"
  * type = #string
  * repeats = true
  * required = true
  * insert initialExpression([["%patient.name[0].given[0]"]], "Erster Vorname des ersten Namens des ersten Patienten") //[[Für den Parser, damit er die eckigen Klammern im String ignoriert.]]
  * insert observationExtract

* item[+] insert stringItem("Name.N", "Geben Sie bitte ihren Nachnamen ein.")
  * required = true
  * code = http://loinc.org#97847-8 "Last (Family) name Person"
  * insert initialExpression([["%patient.name[0].family"]], "Erster Nachname des ersten Namens des ersten Patienten")
  * insert observationExtract

* item[+]
  * linkId = "info"
  * type = #display
  * text = "Ein zweiter Name?"

RuleSet: stringItem(id, text)
* linkId = {id}
* type = #string
* text = {text}