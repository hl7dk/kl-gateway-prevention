// Første indberetning
Instance: e87d5e68-e5f3-476f-988f-4efda86b0645
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-1"
Usage: #example
* type = #collection
* timestamp = 2022-06-02T23:25:12Z

* entry[+].fullUrl = "Patient/e6ce3367-d224-4817-8852-302ae75f7d41"
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "Organization/19f30aa7-db71-4dd2-87a1-d82ca2e9b737"
* entry[=].resource = 19f30aa7-db71-4dd2-87a1-d82ca2e9b737

* entry[+].fullUrl = "Condition/fe9664a3-e21c-40c9-a4cc-61bf647cf161"
* entry[=].resource = fe9664a3-e21c-40c9-a4cc-61bf647cf161

* entry[+].fullUrl = "ServiceRequest/3050d118-89a5-4bf4-85b9-a094e3277de4"
* entry[=].resource = 3050d118-89a5-4bf4-85b9-a094e3277de4

* entry[+].fullUrl = "Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36"
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "CarePlan/7c45824a-9b19-4674-b4a7-c75c674bbb2e"
* entry[=].resource = 7c45824a-9b19-4674-b4a7-c75c674bbb2e


Instance: e6ce3367-d224-4817-8852-302ae75f7d41
InstanceOf: klgateway-119-citizen
Description: "Test personen Bruno Elmer, fra MedCom test-cprnumre. Holbæk kommune er journalførende organisation."
Usage: #inline
* identifier.use = #official
* identifier.value = "2509479989"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "451000016003"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* deceasedBoolean = false

Instance: 19f30aa7-db71-4dd2-87a1-d82ca2e9b737
InstanceOf: klgateway-119-organization
Title: "AfsenderAfBrunosHenvisning"
Description: "Brunos egen læge, der er afsender af Brunos Henvisning"
Usage: #inline
* identifier.use = #official
* identifier.value = "1071391000016009"
* identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: fe9664a3-e21c-40c9-a4cc-61bf647cf161
InstanceOf: klgateway-119-focus-condition
Title: "BrunoAktionsdiagnoseRequest"
Description: "Brunos aktionsdiagnose fra hans henvisning, hvor man kan se at han har Type 2-diabetes"
Usage: #inline
* code.coding[SKS-D] = urn:oid:1.2.208.176.2.4.12#DE11 "Type 2-diabetes"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)

Instance: 3050d118-89a5-4bf4-85b9-a094e3277de4
InstanceOf: klgateway-119-servicerequest
Title: "BrunoRequestInformation"
Description: "Information fra Brunos henvisning, der er baggrunden for at igangsætte indsatsen i kommunen"
Usage: #inline
* requester = Reference(19f30aa7-db71-4dd2-87a1-d82ca2e9b737)
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/request-status#plan
* code.coding = $KLCommonCodes#a71921ea-fe83-441d-933b-cc21d0b3c8c3
* reasonReference = Reference(fe9664a3-e21c-40c9-a4cc-61bf647cf161)
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* authoredOn = 2022-06-02

Instance: 7c45824a-9b19-4674-b4a7-c75c674bbb2e
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoAfklarendeSamtale"
Description: "Bruno's afklarende Samtale"
Usage: #inline
* activity.detail.code.coding[level2] = $FSIII#6eddbaf7-2a73-49d4-91e7-6138d419f58c //Afklarende samtale
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel Indsats"
* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* extension[basedOnServiceRequest].valueReference = Reference(3050d118-89a5-4bf4-85b9-a094e3277de4)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

Instance: 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36
InstanceOf: klgateway-119-organization
Title: "UdførerAfBrunosIndsats"
Description: "Sundhedsfremme og forebyggelse Holbæk kommune, der er udfører af Brunos indsats"
Usage: #inline
* identifier.use = #official
* identifier.value = "1037791000016002"
* identifier.system = "urn:oid:1.2.208.176.1.1"

//2nd
Instance: 8c3f35d7-7437-4fcf-90d2-49e04701d0ec
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-2"
Usage: #example
* type = #collection
* timestamp = 2022-06-10T23:25:12Z

* entry[+].fullUrl = "Patient/e6ce3367-d224-4817-8852-302ae75f7d41" //Bruno som tidligere
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36" //udfører som tidligere
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "CarePlan/7c45824a-9b19-4674-b4a7-c75c674bbb2e" //Afklarende samtale afsluttet
* entry[=].resource = 7c45824a-9b19-4674-b4a7-c75c674bbb2e-v2

* entry[+].fullUrl = "Encounter/284d264b-daa1-44d5-a8c9-52ef90235eaa" //Afklarende samtales kontakt
* entry[=].resource = 284d264b-daa1-44d5-a8c9-52ef90235eaa

* entry[+].fullUrl = "Condition/c2a47519-ae53-46c3-b9f2-5257f4c5b79e" //Brunos tilstand ernæring
* entry[=].resource = c2a47519-ae53-46c3-b9f2-5257f4c5b79e

* entry[+].fullUrl = "CarePlan/1b068b69-afa0-46f8-bb20-a5220c65a079" //Brunos 119 indsatsforløb
* entry[=].resource = 1b068b69-afa0-46f8-bb20-a5220c65a079

* entry[+].fullUrl = "CarePlan/de7fe001-04f4-4e9a-8b4e-3849a3c6a521" //Brunos indsats: Madlavning i praksis
* entry[=].resource = de7fe001-04f4-4e9a-8b4e-3849a3c6a521


Instance: 7c45824a-9b19-4674-b4a7-c75c674bbb2e-v2
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoAfklarendeSamtale-v2"
Description: "Bruno's afklarende samtale afsluttes"
Usage: #inline
* id = "7c45824a-9b19-4674-b4a7-c75c674bbb2e"
* activity.detail.code.coding[level2] = $FSIII#6eddbaf7-2a73-49d4-91e7-6138d419f58c //Afklarende samtale
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel Indsats"
* period.start = 2022-06-02
* period.end = 2022-06-10
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* extension[basedOnServiceRequest].valueReference = Reference(3050d118-89a5-4bf4-85b9-a094e3277de4)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#completed
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

Instance: 284d264b-daa1-44d5-a8c9-52ef90235eaa
InstanceOf: klgateway-119-encounter
Title: "BrunoKontaktAfklarende"
Description: "Brunos kontakt, hvor der er udført en afklarende samtale"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* period.start = 2022-06-10T12:10:00.000Z
* period.end = 2022-06-02T12:40:00.000Z
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* extension[basedOnCarePlan].valueReference = Reference(7c45824a-9b19-4674-b4a7-c75c674bbb2e-v2)


Instance: c2a47519-ae53-46c3-b9f2-5257f4c5b79e
InstanceOf: klgateway-119-condition
Title: "BrunoTilstandErnæring"
Description: "Brunos Tilstand vedrørende ernæring"
Usage: #example
* code.coding =  $FSIII#c0ee1cf6-47a9-4523-8fda-a80a13e28e30 "Ernæring"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* recordedDate = 2022-06-10
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

Instance: 1b068b69-afa0-46f8-bb20-a5220c65a079
InstanceOf: klgateway-119-care-plan
Title: "BrunoforløbMadlavning"
Description: "Brunos forløb vedr. madlavning i praksis"
Usage: #inline
* category = $KLCommonCodes#5c160c02-e858-4c1f-925a-71ed64844749 //kl-term update "Intervention efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-06-10
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

Instance: de7fe001-04f4-4e9a-8b4e-3849a3c6a521
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoMadlavningIPraksis"
Description: "Brunos indsats vedr. madlavning i praksis"
Usage: #inline
* activity.detail.code.coding[level2] = $FSIII#01a500f6-c221-4fd0-b518-cd361218b60d "Madlavning i praksis"
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#2865f123-15a7-4a36-a514-32ea37c400ca "Gruppebaseret indsats"
* period.start = 2022-06-10
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)
* basedOn = Reference(1b068b69-afa0-46f8-bb20-a5220c65a079)