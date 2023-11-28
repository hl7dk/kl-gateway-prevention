// Første indberetning
Instance: e87d5e68-e5f3-476f-988f-4efda86b0645
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-1"
Usage: #example
* type = #collection
* timestamp = 2022-06-02T23:25:12Z

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Patient/e6ce3367-d224-4817-8852-302ae75f7d41"
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/19f30aa7-db71-4dd2-87a1-d82ca2e9b737"
* entry[=].resource = 19f30aa7-db71-4dd2-87a1-d82ca2e9b737

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Condition/fe9664a3-e21c-40c9-a4cc-61bf647cf161"
* entry[=].resource = fe9664a3-e21c-40c9-a4cc-61bf647cf161

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/ServiceRequest/3050d118-89a5-4bf4-85b9-a094e3277de4"
* entry[=].resource = 3050d118-89a5-4bf4-85b9-a094e3277de4

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36"
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/7c45824a-9b19-4674-b4a7-c75c674bbb2e"
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
Title: "BrunoDiabetes"
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

Instance: 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36
InstanceOf: klgateway-119-organization
Title: "UdførerAfBrunosIndsats"
Description: "Sundhedsfremme og forebyggelse Holbæk kommune, der er udfører af Brunos indsats"
Usage: #inline
* identifier.use = #official
* identifier.value = "1037791000016002"
* identifier.system = "urn:oid:1.2.208.176.1.1"

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
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)



//2nd
Instance: 8c3f35d7-7437-4fcf-90d2-49e04701d0ec
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-2"
Usage: #example
* type = #collection
* timestamp = 2022-06-10T23:25:12Z

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Patient/e6ce3367-d224-4817-8852-302ae75f7d41" //Bruno som tidligere
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36" //udfører som tidligere
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/7c45824a-9b19-4674-b4a7-c75c674bbb2e" //Afklarende samtale afsluttet
* entry[=].resource = 7c45824a-9b19-4674-b4a7-c75c674bbb2e-v2

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Encounter/284d264b-daa1-44d5-a8c9-52ef90235eaa" //Afklarende samtales kontakt
* entry[=].resource = 284d264b-daa1-44d5-a8c9-52ef90235eaa

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Condition/c2a47519-ae53-46c3-b9f2-5257f4c5b79e" //Brunos tilstand ernæring
* entry[=].resource = c2a47519-ae53-46c3-b9f2-5257f4c5b79e

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/1b068b69-afa0-46f8-bb20-a5220c65a079" //Brunos 119 indsatsforløb
* entry[=].resource = 1b068b69-afa0-46f8-bb20-a5220c65a079

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/de7fe001-04f4-4e9a-8b4e-3849a3c6a521" //Brunos indsats: Madlavning i praksis
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
* period.end = 2022-06-10T12:40:00.000Z
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* extension[basedOnCarePlan].valueReference = Reference(7c45824a-9b19-4674-b4a7-c75c674bbb2e-v2)


Instance: c2a47519-ae53-46c3-b9f2-5257f4c5b79e
InstanceOf: klgateway-119-condition
Title: "BrunoTilstandErnæring"
Description: "Brunos Tilstand vedrørende ernæring"
Usage: #inline
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

//fifth

Instance: 5135080e-fbaf-4575-afe6-f037d4541e06
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-5"
Usage: #example
* type = #collection
* timestamp = 2022-06-29T23:25:12Z

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Patient/e6ce3367-d224-4817-8852-302ae75f7d41" //Bruno som tidligere
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36" //udfører som tidligere
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/1b068b69-afa0-46f8-bb20-a5220c65a079" //Brunos 119 indsatsforløb, som tidligere
* entry[=].resource = 1b068b69-afa0-46f8-bb20-a5220c65a079

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Encounter/0e553e46-8482-4aa3-9207-2a37d6c71406" // Kontakt på indsatsforløb
* entry[=].resource = 0e553e46-8482-4aa3-9207-2a37d6c71406


Instance: 0e553e46-8482-4aa3-9207-2a37d6c71406
InstanceOf: klgateway-119-encounter
Title: "BrunoKontakt3Madlavning"
Description: "Brunos kontakt, hvor han har tredje madlavning i praksis"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* period.start = 2022-06-29T17:00:00.000Z
* period.end = 2022-06-29T19:00:00.000Z
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* extension[basedOnCarePlan].valueReference = Reference(1b068b69-afa0-46f8-bb20-a5220c65a079)

//Sixth

Instance: 974cabc7-d2e0-4db0-bfa4-6cd5af7103de
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-6"
Usage: #example
* type = #collection
* timestamp = 2022-07-04T23:25:12Z

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Patient/e6ce3367-d224-4817-8852-302ae75f7d41"
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/398c214e-2ae6-4c69-8daa-351769c2dbe5" //holbæk suýgehus
* entry[=].resource = 398c214e-2ae6-4c69-8daa-351769c2dbe5

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Condition/21ade6b2-d9a1-4564-bd91-b841bbae7ccc" //KOL
* entry[=].resource = 21ade6b2-d9a1-4564-bd91-b841bbae7ccc

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/ServiceRequest/4fb11af4-d0e3-4a28-8a6b-375c35629a58" //anmodning om sygdomsmestring fra kommunen
* entry[=].resource = 4fb11af4-d0e3-4a28-8a6b-375c35629a58

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36" //Som tidligere
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/364ae8f2-75b4-43a0-8010-e79ba38f7990" //behovssamtale
* entry[=].resource = 364ae8f2-75b4-43a0-8010-e79ba38f7990


Instance: 398c214e-2ae6-4c69-8daa-351769c2dbe5
InstanceOf: klgateway-119-organization
Title: "AfsenderAfBrunosHenvisning2"
Description: "Medicins observations afdeling Holbæk sygehus, der er afsender af Brunos Henvisning"
Usage: #inline
* identifier.use = #official
* identifier.value = "1347831000016005"
* identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: 21ade6b2-d9a1-4564-bd91-b841bbae7ccc
InstanceOf: klgateway-119-focus-condition
Title: "BrunoKOL"
Description: "Brunos aktionsdiagnose fra hans henvisning, hvor man kan se, at han henvises pga. sin KOL"
Usage: #inline
* code.coding[SKS-D] = urn:oid:1.2.208.176.2.4.12#DJ44 "Kronisk obstruktiv lungesygdom"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)

Instance: 4fb11af4-d0e3-4a28-8a6b-375c35629a58
InstanceOf: klgateway-119-servicerequest
Title: "BrunoRequestInformationKOL"
Description: "Information fra Brunos henvisning vedr. KOL, der er baggrunden for at igangsætte yderligere i kommunen"
Usage: #inline
* requester = Reference(398c214e-2ae6-4c69-8daa-351769c2dbe5)
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/request-status#plan
* code.coding = $KLCommonCodes#a71921ea-fe83-441d-933b-cc21d0b3c8c3
* reasonReference = Reference(21ade6b2-d9a1-4564-bd91-b841bbae7ccc)
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* authoredOn = 2022-07-04

Instance: 364ae8f2-75b4-43a0-8010-e79ba38f7990
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoBehovssamtale"
Description: "Bruno's indsats vedr. behovssamtale"
Usage: #inline
* activity.detail.code.coding[level2] = $FSIII#ee5606ac-1bed-487e-aa3c-72dcc30ec037 //Behovssamtale
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel Indsats"
* period.start = 2022-07-04
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

//Seventh
Instance: 88889c22-b86d-4ceb-81d8-38a158f12bf4
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-7"
Usage: #example
* type = #collection
* timestamp = 2022-06-10T23:25:12Z

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Patient/e6ce3367-d224-4817-8852-302ae75f7d41" //Bruno som tidligere
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36" //udfører som tidligere
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/364ae8f2-75b4-43a0-8010-e79ba38f7990" //Behovssamtale afsluttet
* entry[=].resource = 364ae8f2-75b4-43a0-8010-e79ba38f7990-v2

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Encounter/6daa6b0e-b89a-4b4a-b057-ec02316a05be" //Behovssamtales kontakt
* entry[=].resource = 6daa6b0e-b89a-4b4a-b057-ec02316a05be

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Condition/b7b532ca-561f-4138-b94b-0285902dbc24" //Brunos tilstand sundhedskompetencer
* entry[=].resource = b7b532ca-561f-4138-b94b-0285902dbc24

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/22695613-b50d-445d-aeb9-81937e3f3e47" //Brunos 119 indsatsforløb
* entry[=].resource = 22695613-b50d-445d-aeb9-81937e3f3e47

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/1e4333ec-315c-4e98-b009-fcb77b8e8103" //Brunos indsats: sygdomshåndtering
* entry[=].resource = 1e4333ec-315c-4e98-b009-fcb77b8e8103

Instance: 364ae8f2-75b4-43a0-8010-e79ba38f7990-v2
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoBehovssamtale-v2"
Description: "Bruno's behovssamtale afsluttes"
Usage: #inline
* id = "364ae8f2-75b4-43a0-8010-e79ba38f7990"
* activity.detail.code.coding[level2] = $FSIII#ee5606ac-1bed-487e-aa3c-72dcc30ec037 //Behovssamtale
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel Indsats"
* period.start = 2022-07-04
* period.end = 2022-07-09
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#completed
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)


Instance: 6daa6b0e-b89a-4b4a-b057-ec02316a05be
InstanceOf: klgateway-119-encounter
Title: "BrunoKontaktBehovssamtale"
Description: "Brunos kontakt, hvor der er udført en behovssamtale"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* period.start = 2022-07-09T13:15:00.000Z
* period.end = 2022-07-09T13:45:00.000Z
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* extension[basedOnCarePlan].valueReference = Reference(364ae8f2-75b4-43a0-8010-e79ba38f7990-v2)


Instance: b7b532ca-561f-4138-b94b-0285902dbc24
InstanceOf: klgateway-119-condition
Title: "BrunoTilstandSundhedskompetence"
Description: "Brunos Tilstand vedrørende sundhedskompetence"
Usage: #inline
* code.coding =  $FSIII#bb7e9e71-73f6-4ec6-a0bf-eaec1e5982b4 "Sundhedskompetencer"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* recordedDate = 2022-07-09
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* category.coding = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

Instance: 22695613-b50d-445d-aeb9-81937e3f3e47
InstanceOf: klgateway-119-care-plan
Title: "BrunoforløbSygdomshåndtering"
Description: "Brunos forløb vedr. Sygdomshåndtering"
Usage: #inline
* category = $KLCommonCodes#5c160c02-e858-4c1f-925a-71ed64844749 //kl-term update "Intervention efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-07-09
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

Instance: 1e4333ec-315c-4e98-b009-fcb77b8e8103
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoSygdomshåndtering"
Description: "Brunos indsats vedr. Sygdomshåndtering"
Usage: #inline
* activity.detail.code.coding[level2] = $FSIII#e71b7d85-5c78-49c2-8624-8499d162317b "Sygdomshåndtering"
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#2865f123-15a7-4a36-a514-32ea37c400ca "Gruppebaseret indsats"
* period.start = 2022-07-09
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)
* basedOn = Reference(22695613-b50d-445d-aeb9-81937e3f3e47)

//Eight
Instance: 738ec570-6bb6-4690-9a88-1dbed46d65ed
InstanceOf: klgateway-119-delivery-report
Description: "DeliveryReport-Bruno-8"
Usage: #example
* type = #collection
* timestamp = 2022-09-30T23:25:12Z

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Patient/e6ce3367-d224-4817-8852-302ae75f7d41" //Bruno som tidligere
* entry[=].resource = e6ce3367-d224-4817-8852-302ae75f7d41

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/9d4a1ea8-d7c6-4776-9e93-911ed10d4d36" //udfører som tidligere
* entry[=].resource = 9d4a1ea8-d7c6-4776-9e93-911ed10d4d36

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Condition/b7b532ca-561f-4138-b94b-0285902dbc24" //Brunos tilstand sundhedskompetencer afsluttes
* entry[=].resource = b7b532ca-561f-4138-b94b-0285902dbc24-v2

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/22695613-b50d-445d-aeb9-81937e3f3e47" //Brunos 119 indsatsforløb afsluttes
* entry[=].resource = 22695613-b50d-445d-aeb9-81937e3f3e47-v2

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/1e4333ec-315c-4e98-b009-fcb77b8e8103" //Brunos indsats: Madlavning i praksis afsluttes
* entry[=].resource = 1e4333ec-315c-4e98-b009-fcb77b8e8103-v2

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/e91f631d-6f99-4eb9-9f07-dce1d4f4e54f" //Brunos indsats: Afsluttende samtale
* entry[=].resource = e91f631d-6f99-4eb9-9f07-dce1d4f4e54f

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Enconter/d7646272-58a4-4bfc-a434-b89d4c826cf9" //Brunos kontakt på afsluttende samtale
* entry[=].resource = d7646272-58a4-4bfc-a434-b89d4c826cf9

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/0ce001f0-91c0-4b8c-8604-e94efb46bb45" //Brunos 119 opfølgningsforløb
* entry[=].resource = 0ce001f0-91c0-4b8c-8604-e94efb46bb45

* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/998df1b7-2339-46ec-9672-07178b04a6d8" //Brunos 119 planlagt opfølgning
* entry[=].resource = 998df1b7-2339-46ec-9672-07178b04a6d8

Instance: b7b532ca-561f-4138-b94b-0285902dbc24-v2
InstanceOf: klgateway-119-condition
Title: "BrunoTilstandSundhedskompetence"
Description: "Brunos Tilstand vedrørende sundhedskompetence afsluttes"
Usage: #inline
* id = "b7b532ca-561f-4138-b94b-0285902dbc24"
* code.coding =  $FSIII#bb7e9e71-73f6-4ec6-a0bf-eaec1e5982b4 "Sundhedskompetencer"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* recordedDate = 2022-07-09
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)

Instance: 22695613-b50d-445d-aeb9-81937e3f3e47-v2
InstanceOf: klgateway-119-care-plan
Title: "BrunoforløbSygdomshåndtering"
Description: "Brunos forløb vedr. Sygdomshåndtering afsluttes"
Usage: #inline
* id = "22695613-b50d-445d-aeb9-81937e3f3e47"
* category = $KLCommonCodes#5c160c02-e858-4c1f-925a-71ed64844749 //kl-term update "Intervention efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-07-09
* period.end = 2022-09-30
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#completed
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

Instance: 1e4333ec-315c-4e98-b009-fcb77b8e8103-v2
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoSygdomshåndtering"
Description: "Brunos indsats vedr. Sygdomshåndtering afsluttes"
Usage: #inline
* id = "1e4333ec-315c-4e98-b009-fcb77b8e8103"
* activity.detail.code.coding[level2] = $FSIII#e71b7d85-5c78-49c2-8624-8499d162317b "Sygdomshåndtering"
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#2865f123-15a7-4a36-a514-32ea37c400ca "Gruppebaseret indsats"
* period.start = 2022-07-09
* period.end = 2022-09-30
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#completed
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)
* basedOn = Reference(22695613-b50d-445d-aeb9-81937e3f3e47)

Instance: e91f631d-6f99-4eb9-9f07-dce1d4f4e54f
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoAfsluttendeSamtale"
Description: "Brunos indsats vedr. Afsluttende samtale afsluttes, fordi den gennemføres"
Usage: #inline
* activity.detail.code.coding[level2] = $FSIII#03a3ebdb-9e2d-4be1-b32b-42f0bd2a3362 "Afsluttende samtale"
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"
* period.start = 2022-09-30
* period.end = 2022-09-30
* status = http://hl7.org/fhir/request-status#completed
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#completed
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

Instance: d7646272-58a4-4bfc-a434-b89d4c826cf9
InstanceOf: klgateway-119-encounter
Title: "BrunoKontaktAfsluttendeSamtale"
Description: "Brunos kontakt, hvor der er udført en afsluttende samtale"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* period.start = 2022-09-30T09:05:00.000Z
* period.end = 2022-09-30T09:35:00.000Z
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* extension[basedOnCarePlan].valueReference = Reference(e91f631d-6f99-4eb9-9f07-dce1d4f4e54f)

Instance: 0ce001f0-91c0-4b8c-8604-e94efb46bb45
InstanceOf: klgateway-119-care-plan
Title: "BrunoOpfølgningsforløb"
Description: "Brunos opfølgningsforløb"
Usage: #inline
* category = $KLCommonCodes#9791e55a-656f-47eb-8fd5-c4a06b0a4662 //"Opfølgning efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-09-30
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)

Instance: 998df1b7-2339-46ec-9672-07178b04a6d8
InstanceOf: klgateway-119-planned-intervention
Title: "Brunoopfølgning"
Description: "Brunos indsats vedr. opfølgning"
Usage: #inline
* activity.detail.code.coding[level2] = $FSIII#d1e016b5-150a-4ac4-97ba-d3e19e28471e "Opfølgning"
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"
* period.start = 2022-09-30
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(e6ce3367-d224-4817-8852-302ae75f7d41)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(9d4a1ea8-d7c6-4776-9e93-911ed10d4d36)
* basedOn = Reference(0ce001f0-91c0-4b8c-8604-e94efb46bb45)
