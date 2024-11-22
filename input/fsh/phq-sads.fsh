Instance: PHQ-SADS
InstanceOf: Questionnaire
Usage: #definition
* status = #draft 
* item[+]
  * linkId = "PHQ-SADS Fragebogen"
  * text = "PHQ-SADS Fragebogen"
  * type = #group
  * code = $loinc#69729-2 "Patient Health Questionnaire - Somatic, Anxiety, and Depressive Symptoms (PHQ-SADS) [Reported]"
// PHQ-9 Module
  * item[+]
    * linkId = "phq9"
    * text = "PHQ-9 Depression Module"
    * type = #group
    * item[+]
      * insert add_PHQ-9_Item("phq9_q1", "Wie oft hatten Sie in den letzten zwei Wochen wenig Interesse oder Freude an Ihren Tätigkeiten?", 44250-9)
    * item[+]    
      * insert add_PHQ-9_Item("phq9_q2", "Wie oft fühlten Sie sich in den letzten zwei Wochen niedergeschlagen/ deprimiert oder hoffnungslos?", 44255-8)
    * item[+]
      * insert add_PHQ-9_Item("phq9_q3", "Wie oft hatten Sie in den letzten zwei Wochen Schwierigkeiten einzuschlafen/ durchzuschlafen oder haben zu viel geschlafen?", 44259-0)
    * item[+]
      * insert add_PHQ-9_Item("phq9_q4", "Wie oft hatten Sie in den letzten zwei Wochen das Gefühl - dass Sie zu wenig Energie haben oder sich erschöpft fühlen?", 44254-1)
    * item[+]
      * insert add_PHQ-9_Item("phq9_q5", "Wie oft hatten Sie in den letzten zwei Wochen wenig Appetit oder haben übermäßig viel gegessen?", 44251-7)
    * item[+]
      * insert add_PHQ-9_Item("phq9_q6", "Wie oft fühlten Sie sich in den letzten zwei Wochen schlecht über sich selbst oder als ein Versager oder dass Sie sich selbst oder Ihrer Familie enttäuscht haben?", 44258-2)
    * item[+]
      * insert add_PHQ-9_Item("phq9_q7", "Wie oft hatten Sie in den letzten zwei Wochen Schwierigkeiten sich zu konzentrieren - zum Beispiel beim Lesen der Zeitung oder beim Fernsehen?", 44252-5)
    * item[+]
      * insert add_PHQ-9_Item("phq9_q8", "Wie oft bewegten oder sprachen Sie in den letzten zwei Wochen so langsam dass es anderen Menschen aufgefallen ist? Oder im Gegenteil: waren Sie so unruhig oder rastlos - dass Sie sich mehr als sonst bewegt haben?", 44253-3)
    * item[+]
      * insert add_PHQ-9_Item("phq9_q9", "Wie oft hatten Sie in den letzten zwei Wochen Gedanken daran - dass Sie lieber tot wären oder sich Leid zufügen würden?", 44260-8)
    * item[+]
      * linkId = "phq9_score"
      * code = $loinc#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
      * readOnly = true
      * type = #integer //?

// GAD-7 Module
  * item[+]
    * linkId = "gad7"
    * text = "GAD-7 Anxiety Module"
    * type = #group
    * item[+]
      * insert add_GAD-7_Item("gad7_q1", "Wie oft waren Sie in den letzten zwei Wochen nervös - ängstlich oder angespannt?", 69725-0)
    * item[+]
      * insert add_GAD-7_Item("gad7_q2", "Wie oft hatten Sie in den letzten zwei Wochen das Gefühl - dass Sie Ihre Sorgen nicht kontrollieren können?", 68509-9)
    * item[+]
      * insert add_GAD-7_Item("gad7_q3", "Wie oft haben Sie sich in den letzten zwei Wochen übermäßig Sorgen gemacht?", 69733-4)
    * item[+]
      * insert add_GAD-7_Item("gad7_q4", "Wie oft hatten Sie in den letzten zwei Wochen Schwierigkeiten - sich zu entspannen?", 69734-2)
    * item[+]
      * insert add_GAD-7_Item("gad7_q5", "Wie oft waren Sie in den letzten zwei Wochen so unruhig - dass Sie sich nicht still sitzen konnten?", 69735-9)
    * item[+]
      * insert add_GAD-7_Item("gad7_q6", "Wie oft fühlten Sie sich in den letzten zwei Wochen leicht genervt oder gereizt?", 69689-8)
    * item[+]
      * insert add_GAD-7_Item("gad7_q7", "Wie oft hatten Sie in den letzten zwei Wochen das Gefühl - dass etwas Schlimmes passieren könnte?", 69736-7)
    * item[+]
      * linkId = "gad7_score"
      * code = $loinc#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
      * readOnly = true
      * type = #integer //?

// PHQ-15 Module
  * item[+]
    * linkId = "phq15"
    * text = "PHQ-15 Somatic Symptom Module"
    * type = #group
    * item[+]
      * insert add_PHQ-15_Item("phq15_q1", "Bauchschmerzen", 69671-6)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q2", "Rückenschmerzen", 69672-4)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q3", "Schmerzen in den Armen/ Beinen oder Gelenken - Knie/ Hüfte usw.", 69673-2)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q4", "Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf", 69687-2)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q5", "Menstruationsbeschwerden oder andere Probleme - die mit dem Menstruationszyklus in Verbindung stehen  - bei Frauen", 69674-0)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q6", "Schmerzen oder Probleme beim Geschlechtsverkehr", 69717-7)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q7", "Kopfschmerzen", 69675-7)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q8", "Schmerzen im Brustbereich", 69676-5)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q9", "Schwindel", 69677-3)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q10", "Ohnmachtsanfälle", 69678-1)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q11", "Herzklopfen oder Herzrasen", 69679-9)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q12", "Kurzatmigkeit", 69680-7)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q13", "Verstopfung - nervöser Darm oder Durchfall", 69681-5)
    * item[+]
      * insert add_PHQ-15_Item("phq15_q14", "Übelkeit - Blähungen oder Verdauungsbeschwerden", 69682-3)
    * item[+]
      * linkId = "phq15_score"
      * code = $loinc#70273-8 "Patient Health Questionnaire 15 item (PHQ-15) total score [Reported]"
      * readOnly = true
      * type = #integer //?


RuleSet: add_PHQ-9_Item(linkId, text, code)
* linkId = {linkId}
* type = #choice
* text = {text}
* code = $loinc#{code}
* answerValueSet = "http://loinc.org/vs/LL358-3"

RuleSet: add_GAD-7_Item(linkId, text, code)
* linkId = {linkId}
* type = #choice
* text = {text}
* code = $loinc#{code}
* answerValueSet = "http://loinc.org/vs/LL358-3"

RuleSet: add_PHQ-15_Item(linkId, text, code)
* linkId = {linkId}
* type = #choice
* text = {text}
* code = $loinc#{code}
* answerValueSet = "http://loinc.org/vs/LL1997-7"
