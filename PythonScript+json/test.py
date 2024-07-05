import requests
import json
import os

# URL des HAPI FHIR Servers
hapi_fhir_server_url = "http://localhost:8080/fhir"
headers = {
    "Content-Type": "application/fhir+json"
}

def initialPOST(directory, hapi_fhir_server_url): # Alle StrucktureDefinitions & Valuesets vom Pathobefund
    # Iterate over all files in the given directory
    for filename in os.listdir(directory):
        if filename.endswith('.json'):
            # Construct the full path to the file
            file_path = os.path.join(directory, filename)
            with open(file_path, 'r') as f:
                try:
                    # Read the JSON data from the file
                    data = json.load(f)

                    # Determine the resource type from the JSON data
                    resource_type = data.get('resourceType')
                    if not resource_type:
                        print(f'Skipping {filename}: No resourceType found.')
                        continue

                    # Construct the endpoint URL for the resource type
                    endpoint_url = f'{hapi_fhir_server_url}/{resource_type}'

                    # Send a POST request to the server
                    response = requests.post(endpoint_url, headers={'Content-Type': 'application/json'}, data=json.dumps(data))

                    # Check the response status code
                    if response.status_code == 201:
                        print(f'Successfully posted {filename}.')
                    else:
                        print(f'Failed to post {filename}: {response.status_code} {response.text}')

                except json.JSONDecodeError:
                    print(f'Failed to read {filename}: Invalid JSON.')

def upload_ServiceRequest(serviceRequest):
    url = f"{hapi_fhir_server_url}/ServiceRequest"
    response = requests.post(url, headers=headers, json=serviceRequest)
    if response.status_code in [200, 201]:
        print("ServiceRequest erfolgreich hochgeladen.")
        return response.headers['Location']  # Gibt die Location-URL des hochgeladenen Questionnaires zurück
    else:
        print(f"Fehler beim Hochladen des ServiceRequest: {response.status_code} - {response.text}")
        return None

def upload_questionnaire(questionnaire):
    url = f"{hapi_fhir_server_url}/Questionnaire"
    response = requests.post(url, headers=headers, json=questionnaire)
    if response.status_code in [200, 201]:
        print("Questionnaire erfolgreich hochgeladen.")
        return response.headers['Location']  # Gibt die Location-URL des hochgeladenen Questionnaires zurück
    else:
        print(f"Fehler beim Hochladen des Questionnaires: {response.status_code} - {response.text}")
        return None

def create_empty_patient():
    urlPatient = f"{hapi_fhir_server_url}/Patient"
    patient_resource = {
        "resourceType": "Patient"
    }
    responsePatient = requests.post(urlPatient, headers=headers, json=patient_resource)
    if responsePatient.status_code in [200, 201]:
        print("Leerer Patient erfolgreich erstellt.")
        return responsePatient.headers['Location']  # Gibt die Location-URL des erstellten Patienten zurück
    else:
        print(f"Fehler beim Erstellen des Patienten: {responsePatient.status_code} - {responsePatient.text}")
        return None

def create_empty_practitioner():
    urlPractitioner = f"{hapi_fhir_server_url}/Practitioner"
    practitioner_recource = {
        "resourceType": "Practitioner"
    }
    responsePractitioner = requests.post(urlPractitioner, headers=headers, json=practitioner_recource)
    if responsePractitioner.status_code in [200, 201]:
        print("Leerer Practitioner erfolgreich erstellt.")
        return responsePractitioner.headers['Location']  # Gibt die Location-URL des erstellten Practitioner zurück
    else:
        print(f"Fehler beim Erstellen des Practitioner: {responsePractitioner.status_code} - {responsePractitioner.text}")
        return None

def create_empty_encounter():
    urlEncounter = f"{hapi_fhir_server_url}/Encounter"
    encounter_resource = {
        "resourceType": "Encounter",
        "status": "in-progress",
        "class": {"system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "NONAC"}
    }
    responseEncounter = requests.post(urlEncounter, headers=headers, json=encounter_resource)
    if responseEncounter.status_code in [200, 201]:
        print("Leerer Encounter erfolgreich erstellt.")
        return responseEncounter.headers['Location']  # Gibt die Location-URL des erstellten Encounter zurück
    else:
        print(f"Fehler beim Erstellen des Encounter: {responseEncounter.status_code} - {responseEncounter.text}")
        return None

def populate_questionnaire(questionnaire_id, patient_id):
    url = f"{hapi_fhir_server_url}/Questionnaire/{questionnaire_id}/$populate?subject=Patient/{patient_id}"
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        questionnaire_response = response.json()
        print("QuestionnaireResponse erfolgreich erstellt.")
        return questionnaire_response
    else:
        print(f"Fehler beim Ausfüllen des Questionnaires: {response.status_code} - {response.text} - Qid = {questionnaire_id}")
        return None

def post_questionnaire_response(questionnaire_response):
    url = f"{hapi_fhir_server_url}/QuestionnaireResponse"
    response = requests.post(url, headers=headers, json=questionnaire_response)
    if response.status_code in [200, 201]:
        print("QuestionnaireResponse erfolgreich gepostet.")
        return response.headers['Location']  # Gibt die Location-URL des erstellten QRs zurück
    else:
        print(f"Fehler beim Erstellen und Posten des QuestionnaireResponse: {response.status_code} - {response.text}")
        return None

def extract_questionnaire_response(questionnaire_response_id):
    url = f"{hapi_fhir_server_url}/QuestionnaireResponse/{questionnaire_response_id}/$extract"
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        extracted_resources = response.json()
        print("Extrahierte Ressourcen erfolgreich erhalten.")
        return extracted_resources
    else:
        print(f"Fehler beim Extrahieren der Ressourcen: {response.status_code} - {response.text} - übergebene QR-ID = {questionnaire_response_id}")
        return None

def check_resources_on_server(hapi_fhir_server_url, resource_type):
    url = f"{hapi_fhir_server_url}/{resource_type}?_summary=count"
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        count = response.json().get('total', 0)
        return count > 0
    else:
        print(f"Fehler bei der Überprüfung der vorhandenen {resource_type}: {response.status_code} - {response.text}")
        return False
    

def update_extracted_resources(extracted_resources, patient_id, practitioner_id, serviceRequest_id):
    # Dictionary mit spezifischen Änderungen für jedes Profil
    profile_updates = {
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report": lambda resource: update_report(resource, patient_id, practitioner_id, serviceRequest_id), #specimenID und ObservationGrouper fehlen
        # hier weiter StructureDefinitions einfügen
    }

    for entry in extracted_resources.get('entry', []):
        resource = entry.get('resource')
        if resource:
            # Überprüfen, ob das Profil im meta.profile der Ressource vorhanden ist
            profiles = resource.get('meta', {}).get('profile', [])
            for profile in profiles:
                if profile in profile_updates:
                    # Spezifische Änderung für das Profil vornehmen
                    profile_updates[profile](resource)

    return extracted_resources

def update_additional_specified_grouper(resource):
    
    pass

def update_attached_image(resource):

    pass

def update_composition(resource):

    pass

def update_diagnostic_conclusion_grouper(resource):

    pass

def update_finding(resource):

    pass

def update_history_of_present_illness(resource):

    pass

def update_intraoperative_grouper(resource):

    pass

def update_macroscopic_grouper(resource):

    pass

def update_microscopic_grouper(resource):

    pass

def update_problem_list_item(resource):

    pass

def update_report(resource, patient_id, practitioner_id, serviceRequest_id):
    resource['identifier'] = [{
        'value': '123456',
        'system': 'https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht'
    }]
    
    # Setze DiagnosticReport.basedOn (Referenz auf vorher erstellten ServiceRequest)
    resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]
    
    # Setze DiagnosticReport.status
    resource['status'] = 'partial'
    
    # Setze DiagnosticReport.code.coding
    resource['code'] = {
        'coding': [{
            'system': 'http://loinc.org',
            'code': '60568-3',
            'display': 'Pathology report'
        }]
    }
    
    # Setze DiagnosticReport.performer (Referenz auf vorher erstellten Practitioner)
    resource['performer'] = [{'reference': f'Practitioner/{practitioner_id}'}]
    
    # Setze DiagnosticReport.subject (Referenz auf vorher erstellten Patienten)
    resource['subject'] = {'reference': f'Patient/{patient_id}'}
    
    # Rückgabe der aktualisierten Resource
    return resource

def update_service_request(resource):

    pass

def update_specimen(resource):

    pass

def post_extracted_resources(extracted_resources):
    resource_ids = []
    for entry in extracted_resources.get('entry', []):
        resource = entry.get('resource')
        if resource:
            resource_type = resource.get('resourceType')
            if not resource_type:
                print("No resourceType found for resource.")
                continue
            url = f"{hapi_fhir_server_url}/{resource_type}"
            response = requests.post(url, headers=headers, json=resource)
            if response.status_code in [200, 201]:
                ressourceID = response.headers['Location'].split('/')[-3] # RessourceID extrahieren
                resource_ids.append(ressourceID)
                print(f"{resource_type} erfolgreich gepostet. ID = {ressourceID}")
                return resource_ids
            else:
                print(f"Fehler beim Posten der {resource_type}: {response.status_code} - {response.text}")
                

def main():
    hapi_fhir_server_url = "http://localhost:8080/fhir"
    directory = "./MII-Patho"
    questionnaire_file_path = 'QuestionnairePathoRes.json'
    serviceRequest_file_path = 'ExampleServiceRequest.json'

    # Schritt 0.1: Überprüfen, ob StructureDefinitions & ValueSets bereits auf dem Server sind
    structure_definitions_present = check_resources_on_server(hapi_fhir_server_url, 'StructureDefinition')
    value_sets_present = check_resources_on_server(hapi_fhir_server_url, 'ValueSet')

    if not (structure_definitions_present and value_sets_present):
        # Schritt 0.2: Wenn sie nicht vorhanden sind, initialPOST ausführen
        initialPOST(directory, hapi_fhir_server_url)
    else:
        print("StructureDefinitions und ValueSets sind bereits auf dem Server vorhanden. Schritt wird übersprungen.")

    # Schritt 1: Questionnaire hochladen und ID extrahieren
    with open(questionnaire_file_path, 'r') as file:
        questionnaire = json.load(file)
    questionnaire_location = upload_questionnaire(questionnaire)
    if questionnaire_location:
        # Extrahiere die ID aus der Location-URL
        questionnaire_id = questionnaire_location.split('/')[-3]
    else:
        print("Fehler beim Hochladen des Questionnaires. Abbruch.")
        return

    # Schritt 2: Leeren Patienten/Encounter/Practitioner erstellen und ID extrahieren
    patient_location = create_empty_patient()
    if patient_location:
        # Extrahiere die ID aus der Location-URL
        patient_id = patient_location.split('/')[-3]
    else:
        print("Fehler beim Erstellen des Patienten. Abbruch.")
        return

    encounter_location = create_empty_encounter()
    if encounter_location:
        # Extrahiere die ID aus der Location-URL
        encounter_id = encounter_location.split('/')[-3]
    else:
        print("Fehler beim Erstellen des Encounter. Abbruch.")
        return

    practitioner_location = create_empty_practitioner()
    if practitioner_location:
        # Extrahiere die ID aus der Location-URL
        practitioner_id = practitioner_location.split('/')[-3]
    else:
        print("Fehler beim Erstellen des Practitioner. Abbruch.")
        return

    # Schritt 2.5: ServiceRequest Example auslesen, hochladen und ID extrahieren
    with open(serviceRequest_file_path, 'r') as file:
        serviceRequest = json.load(file)
    # Referenzen auf die erstellten Ressourcen in ServiceRequest einbetten
    serviceRequest['subject']['reference'] = f"Patient/{patient_id}"
    serviceRequest['requester']['reference'] = f"Practitioner/{practitioner_id}"
    serviceRequest['encounter']['reference'] = f"Encounter/{encounter_id}"
    serviceRequest_location = upload_ServiceRequest(serviceRequest)
    if serviceRequest_location:
        # Extrahiere die ID aus der Location-URL
        serviceRequest_id = serviceRequest_location.split('/')[-3]
        print(f"ServiceRequestID: {serviceRequest_id}")
    else:
        print("Fehler beim Hochladen des ServiceRequest. Abbruch.")
        return

    # Schritt 3: Questionnaire mit Beispielantworten ausfüllen
    questionnaire_response = populate_questionnaire(questionnaire_id, patient_id)
    if questionnaire_response:
        questionnaire_response_location = post_questionnaire_response(questionnaire_response)
        if questionnaire_response_location:
            # Extrahiere die ID des QuestionnaireResponse
            questionnaire_response_id = questionnaire_response_location.split('/')[-3]
            print(f"Übergebene QR_ID: {questionnaire_response_id}")
        else:
            print("Fehler beim Hochladen des QuestionnaireResponse. Abbruch.")
            return
    else:
        print("Fehler beim Ausfüllen des Questionnaires. Abbruch.")
        return

    # Schritt 4: Extract-Mapping des QuestionnaireResponses aufrufen
    extracted_resources = extract_questionnaire_response(questionnaire_response_id)
    if extracted_resources:
        print(f"Extracted resources: {json.dumps(extracted_resources, indent=2)}")

        # Schritt 5: Anpassung der extrahierten Ressourcen
        updated_resources = update_extracted_resources(extracted_resources, patient_id, practitioner_id, serviceRequest_id)
        print(f"Updated resources: {json.dumps(updated_resources, indent=2)}")
        resource_ids = post_extracted_resources(updated_resources)
        
    else:
        print("Fehler beim Extrahieren der Ressourcen aus dem QuestionnaireResponse. Abbruch.")
        
if __name__ == "__main__":
    main()
