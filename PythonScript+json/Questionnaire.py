import requests
import json
import os

# URL des HAPI FHIR Servers
hapi_fhir_server_url = "http://localhost:8080/fhir"
headers = {
    "Content-Type": "application/fhir+json"
}

def initialPOST(directory, hapi_fhir_server_url): # Post alle StructureDefinitions & Valuesets vom Pathobefund 
    for filename in os.listdir(directory):
        if filename.endswith('.json'):
            file_path = os.path.join(directory, filename)
            with open(file_path, 'r') as f:
                try:
                    data = json.load(f)
                    resource_type = data.get('resourceType')
                    if not resource_type:
                        print(f'Skipping {filename}: No resourceType found.')
                        continue
                    endpoint_url = f'{hapi_fhir_server_url}/{resource_type}'
                    response = requests.post(endpoint_url, headers={'Content-Type': 'application/json'}, data=json.dumps(data))
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
    

def update_extracted_resources(extracted_resources, patient_id, practitioner_id, serviceRequest_id, encounter_id, questionnaire_response_id):
    # Dictionary mit spezifischen Änderungen für jedes Profil
    profile_updates = {
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report": lambda resource: update_report(resource, patient_id, practitioner_id, serviceRequest_id, encounter_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper": lambda resource: update_additional_specified_grouper(resource, serviceRequest_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image": update_attached_image,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition": update_composition,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper": lambda resource: update_diagnostic_conclusion_grouper(resource, serviceRequest_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding": lambda resource: update_finding(resource, questionnaire_response_id, serviceRequest_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness": lambda resource: update_history_of_present_illness(resource, patient_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list": lambda resource: update_active_problems_list(resource, patient_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper": lambda resource: update_intraoperative_grouper(resource, serviceRequest_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper": lambda resource: update_macroscopic_grouper(resource, serviceRequest_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper": lambda resource: update_microscopic_grouper(resource, serviceRequest_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item": lambda resource: update_problem_list_item(resource, patient_id),
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request": update_service_request,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen": lambda resource: update_specimen(resource, patient_id)
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

# Update-Funktionen

def update_additional_specified_grouper(resource, serviceRequest_id):
    resource['status'] = 'final'
    resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]

def update_attached_image(resource):
    resource['type'] = {
        'coding': [{
            'system': 'http://terminology.hl7.org/CodeSystem/media-type',
            'code': 'image',
        }]
    }
    resource['status'] = 'completed'

def update_composition(resource):
    resource['status'] = 'final'

def update_diagnostic_conclusion_grouper(resource, serviceRequest_id):
    resource['status'] = 'final'
    resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]

def update_finding(resource, questionnaire_response_id, serviceRequest_id):
    resource['status'] = 'final'
    resource['hasMember'] = [{'reference': f'QuestionnaireResponse/{questionnaire_response_id}'}]
    resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]

def update_history_of_present_illness(resource, patient_id):
    resource['status'] = 'current'
    resource['mode'] = 'snapshot'
    resource['code'] = {
        'coding': [{
            'system': 'http://loinc.org',
            'code': '8684-3',
        }]
    }
    resource['subject'] = {'reference': f'Patient/{patient_id}'}

def update_active_problems_list(resource, patient_id):
    resource['status'] = 'current'
    resource['mode'] = 'snapshot'
    resource['code'] = {
        'coding': [{
            'system': 'http://loinc.org',
            'code': '11450-4',
        }]
    }
    resource['subject'] = {'reference': f'Patient/{patient_id}'}

def update_intraoperative_grouper(resource, serviceRequest_id):
    resource['status'] = 'final'
    resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]

def update_macroscopic_grouper(resource, serviceRequest_id):
    resource['status'] = 'final'
    resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]

def update_microscopic_grouper(resource, serviceRequest_id):
    resource['status'] = 'final'
    resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]

def update_problem_list_item(resource, patient_id):
    resource['category'] = {
        'coding': [{
            'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
            'code': 'problem-list-item',
        }]
    }
    resource['status'] = 'current'
    resource['subject'] = {'reference': f'Patient/{patient_id}'}

def update_report(resource, patient_id, practitioner_id, serviceRequest_id, encounter_id):
    resource['identifier'] = [{
        'value': 'E18-321654',
        'system': 'https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht'
    }]
    # resource['basedOn'] = [{'reference': f'ServiceRequest/{serviceRequest_id}'}]
    resource['encounter'] = [{'reference': f'Encounter/{encounter_id}'}]
    resource['status'] = 'final'
    if 'code' in resource:
        if 'coding' in resource['code']:
            resource['code']['coding'].append({
                'system': 'http://loinc.org',
                'code': '60568-3',
                'display': 'Pathology report'
            })
        else:
            resource['code'] = {
                'coding': [{
                    'system': 'http://loinc.org',
                    'code': '60568-3',
                    'display': 'Pathology report'
                }]
            }
    resource['performer'] = [{'reference': f'Practitioner/{practitioner_id}'}]
    resource['subject'] = {'reference': f'Patient/{patient_id}'}
    return resource

def update_service_request(resource):
    resource['status'] = 'completed'

def update_specimen(resource, patient_id):
    resource['status'] = 'available'
    resource['type'] = {
        'coding': [{
            'system': 'http://snomed.info/sct',
            'code': '309134005',
            'display': 'Prostate tru-cut biopsy specimen (specimen)'
        }]
    }
    resource['subject'] = {'reference': f'Patient/{patient_id}'}
    resource['collection'] = {
        'collectedDateTime': '2024-06-29T17:01:32Z',
        'method': {
            'coding': [{
                'system': 'http://snomed.info/sct',
                'code': '40013009',
                'display': 'Core needle biopsy of prostate (procedure)'
            }]
        }
    }
    return resource

def post_updated_resources(extracted_resources):
    posted_resources = []
    posted_ids = []
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
                resource_id = response.headers['Location'].split('/')[-3]  # RessourceID extrahieren
                posted_ids.append(resource_id)
                # Hole die gepostete Resource vom Server, um die komplette Resource zu bekommen
                get_url = f"{hapi_fhir_server_url}/{resource_type}/{resource_id}"
                get_response = requests.get(get_url, headers=headers)
                
                if get_response.status_code == 200:
                    posted_resource = get_response.json()
                    posted_resources.append(posted_resource)
                    print(f"{resource_type} erfolgreich gepostet und abgerufen. ID = {resource_id}")
                else:
                    print(f"Fehler beim Abrufen der {resource_type} mit ID {resource_id}: {get_response.status_code} - {get_response.text}")
                
            else:
                print(f"Fehler beim Posten der {resource_type}: {response.status_code} - {response.text}")
    return posted_resources, posted_ids

def update_posted_resources(posted_resources):
    # Dictionary mit spezifischen Änderungen für jedes Profil
    profile_updates = {
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report": update_posted_report,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper": update_posted_additional_specified_grouper,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image": update_posted_attached_image,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition": update_posted_composition,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper": update_posted_diagnostic_conclusion_grouper,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding": update_posted_finding,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness": update_posted_history_of_present_illness,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list": update_posted_active_problems_list,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper": update_posted_intraoperative_grouper,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper": update_posted_macroscopic_grouper,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper": update_posted_microscopic_grouper,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item": update_posted_problem_list_item,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request": update_posted_service_request,
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen": update_posted_specimen
    }

    # Dictionaries zur Speicherung der Grouper und Findings
    groupers = {
        "mii-pr-patho-additional-specified-grouper": [],
        "mii-pr-patho-intraoperative-grouper": [],
        "mii-pr-patho-macroscopic-grouper": [],
        "mii-pr-patho-microscopic-grouper": [],
        "mii-pr-patho-diagnostic-conclusion-grouper": []
    }
    findings = []

    for resource in posted_resources:
        profiles = resource.get('meta', {}).get('profile', [])
        for profile in profiles:
            if profile in profile_updates:
                profile_updates[profile](resource)
                # Speichere die Grouper und Findings
                if profile.startswith("https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-") and profile.endswith("-grouper"):
                    groupers[profile.split('/')[-1]].append(resource)
                elif profile == "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding":
                    findings.append(resource)

    # Verknüpfe die Findings mit den entsprechenden Groupers
    category_to_grouper = {
        "83321-0": "mii-pr-patho-intraoperative-grouper",
        "22634-0": "mii-pr-patho-macroscopic-grouper",
        "22635-7": "mii-pr-patho-microscopic-grouper",
        "22637-3": "mii-pr-patho-diagnostic-conclusion-grouper",
        "77599-9": "mii-pr-patho-additional-specified-grouper"
    }

    for finding in findings:
        if 'category' in finding and 'coding' in finding['category'][0]:
            category_code = finding['category'][0]['coding'][0]['code']
            grouper_key = category_to_grouper.get(category_code)
            if grouper_key and groupers[grouper_key]:
                # Füge die Reference des Findings zum ersten passenden Grouper hinzu
                grouper = groupers[grouper_key][0]
                if 'hasMember' not in grouper:
                    grouper['hasMember'] = []
                grouper['hasMember'].append({"reference": f"Observation/{finding['id']}"})

    return posted_resources

# Update-Funktionen

def update_posted_additional_specified_grouper(resource):
    
    pass

def update_posted_attached_image(resource):

    pass

def update_posted_composition(resource):

    pass

def update_posted_diagnostic_conclusion_grouper(resource):

    pass

def update_posted_active_problems_list(resource):

    pass

def update_posted_finding(resource):

    pass

def update_posted_history_of_present_illness(resource):

    pass

def update_posted_intraoperative_grouper(resource):

    pass

def update_posted_macroscopic_grouper(resource):

    pass

def update_posted_microscopic_grouper(resource):

    pass

def update_posted_problem_list_item(resource):

    pass

def update_posted_report(resource):

    pass

def update_posted_service_request(resource):

    pass

def update_posted_specimen(resource):

    pass

def put_finalized_resources(finalized_resources, posted_ids):
    if len(finalized_resources) != len(posted_ids):
        raise ValueError("Die Anzahl der Ressourcen stimmt nicht mit der Anzahl der IDs überein.")
    
    for resource, resource_id in zip(finalized_resources, posted_ids):
        resource_type = resource.get('resourceType')
        if not resource_type:
            print("No resourceType found for resource.")
            continue
        
        url = f"{hapi_fhir_server_url}/{resource_type}/{resource_id}"
        response = requests.put(url, headers=headers, json=resource)
        
        if response.status_code == 200:
            print(f"{resource_type} erfolgreich aktualisiert. ID = {resource_id}")
        else:
            print(f"Fehler beim Aktualisieren der {resource_type} mit ID {resource_id}: {response.status_code} - {response.text}")

def main():
    directory = "./MII-Patho"
    questionnaire_file_path = 'QuestionnaireKlinischeAng.json'
    serviceRequest_file_path = 'ExampleServiceRequest.json'

    # Schritt 0.1: Überprüfen, ob StructureDefinitions & ValueSets bereits auf dem Server sind
    structure_definitions_present = check_resources_on_server(hapi_fhir_server_url, 'StructureDefinition')
    value_sets_present = check_resources_on_server(hapi_fhir_server_url, 'ValueSet')

    if not (structure_definitions_present and value_sets_present):
        # Schritt 0.2: Wenn sie nicht vorhanden sind, initialPOST ausführen
        initialPOST(directory, hapi_fhir_server_url)
    else:
        print("StructureDefinitions und ValueSets sind bereits auf dem Server vorhanden. Schritt wird übersprungen.")


    # Schritt 1: Leeren Patienten/Encounter/Practitioner erstellen und ID extrahieren
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
    # Schritt 2: ServiceRequest Example auslesen, hochladen und ID extrahieren
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
    # Schritt 2.5: Questionnaire hochladen und ID extrahieren
    with open(questionnaire_file_path, 'r') as file:
        questionnaire = json.load(file)
    questionnaire_location = upload_questionnaire(questionnaire)
    if questionnaire_location:
        # Extrahiere die ID aus der Location-URL
        questionnaire_id = questionnaire_location.split('/')[-3]
    else:
        print("Fehler beim Hochladen des Questionnaires. Abbruch.")
        return
    # Schritt 3: Questionnaire mit Beispielantworten ausfüllen
    questionnaire_response = populate_questionnaire(questionnaire_id, patient_id)
    if questionnaire_response:
        questionnaire_response_location = post_questionnaire_response(questionnaire_response)
        if questionnaire_response_location:
            # Extrahiere die ID des QuestionnaireResponse
            questionnaire_response_id = questionnaire_response_location.split('/')[-3]
            print(f"Übergebene QR_ID: {questionnaire_response_id}")
            print(f"QR: {json.dumps(questionnaire_response, indent=2)}")
        else:
            print("Fehler beim Hochladen des QuestionnaireResponse. Abbruch.")
            return
    else:
        print("Fehler beim Ausfüllen des Questionnaires. Abbruch.")
        return

    # Schritt 4: Extract des QuestionnaireResponses
    extracted_resources = extract_questionnaire_response(questionnaire_response_id)
    if extracted_resources:
        print(f"Extracted resources: {json.dumps(extracted_resources, indent=2)}")
        # Schritt 5: Anpassung der extrahierten Ressourcen
        updated_resources = update_extracted_resources( extracted_resources, patient_id, practitioner_id, serviceRequest_id, encounter_id, questionnaire_response_id)
        print(f"Updated resources: {json.dumps(updated_resources, indent=2)}")
        posted_resources, posted_ids = post_updRessourceated_resources(updated_resources)
        finalized_resources = update_posted_resources(posted_resources)
        print(f"Finalisierte Ressourcen: {json.dumps(finalized_resources, indent=2)}")
        put_finalized_resources(finalized_resources, posted_ids)
    else:
        print("Fehler beim Extrahieren der Ressourcen aus dem QuestionnaireResponse. Abbruch.")
        
if __name__ == "__main__":
    main()
