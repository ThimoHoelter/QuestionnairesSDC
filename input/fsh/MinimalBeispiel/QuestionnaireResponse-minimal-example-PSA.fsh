Instance: MinimalPSAExampleResponse
InstanceOf: QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-05-05T12:48:40Z"
* meta.source = "https://art-decor.org/fhir/4.0/pathdv-"
* language = #de-DE
* questionnaire = "https://art-decor.org/fhir/Questionnaire/EingabeformularfuerKlinischeAngabenBeiStanzbiopsien"
* status = #completed
* authored = "2024-04-26T10:26:24Z"

// Frage zur PSA-Serologie (Gleiche Bedinung)
* item[+]
* item[=].linkId = "PSA-Serologie"
* item[=].answer[+].valueQuantity.value = 1.234