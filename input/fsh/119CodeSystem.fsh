// CodeSystem: Tempcodes
// Id: Tempcodes
// Title: "Tempcodes"
// Description: "Tempcodes to be implemented in KL-term"
// * #7273c0b7-1a0d-4c4a-a202-c014b1ddd4a0 "Første kontakt i forløb"
// * ^experimental = false
// * ^caseSensitive = true
// * #ef491570-7884-4acd-bcf7-43d6b2c64762 "Borger har ikke henvendt sig eller er udeblevet"


ValueSet: CancellationTypes
Id: CancellationTypes
Title: "CancellationTypes"
Description: "Cancellation valueset, to be implemented in KL-term and FKI"
* ^experimental = false
* $KLCommonCodes#4bbf6d6a-a1c6-41c2-b8c1-7352b7378adf //"Ikke yderligere behov (borger-vurderet)"
* $KLCommonCodes#a63b6aa6-7d56-4e67-a5b3-d73f6d262af5 //"Ikke yderligere behov (fagperson-vurderet)"
* $KLCommonCodes#3a5a72b7-addf-4857-b80c-04e4246e3072 //"Aktivt fravalg"
* $KLCommonCodes#0cd5734d-b663-47c6-a3da-6b14a937d144 //"Aktivt fravalg pga. anden sygdom"
* $KLCommonCodes#f8436c2e-af1c-44fe-939d-473b518dd01d //"Aktivt fravalg pga. økonomi ifm. transport"
* $KLCommonCodes#8371b769-4bfb-4ac8-b130-d91c54784a56 //"Aktivt fravalg pga. logistik ifm. transport"
* $KLCommonCodes#a3f2bd01-078b-486e-81be-797d192ad7bd //"Aktivt fravalg pga. anden træning"
* $KLCommonCodes#82e99421-31da-4915-96ed-168ccfa1d20c //"Hændelse medfører ophør"
* $KLCommonCodes#ef491570-7884-4acd-bcf7-43d6b2c64762 // "Borger har ikke henvendt sig eller er udeblevet"


ValueSet: ServiceTypes119
Id: ServiceTypes119
Title: "ServiceTypes"
Description: "The service types allowed in §119" 
* ^experimental = false
* $KLCommonCodes#a71921ea-fe83-441d-933b-cc21d0b3c8c3 //Sundhedsfremme og forebyggelse

ValueSet: KLInterventionCodes119
Id: KLInterventionCodes119
Title: "KLInterventionCodes119"
Description: "Intervention codes allowed in this implementation guide."
* ^experimental = false
* $FSIII#01a500f6-c221-4fd0-b518-cd361218b60d // Madlavning i praksis	
* $FSIII#03a3ebdb-9e2d-4be1-b32b-42f0bd2a3362 // Afsluttende samtale
* $FSIII#61692d91-69b8-4830-9453-3d58454e49d3 // Færdighedstræning
* $FSIII#6d24992e-e0a2-43e7-bc27-0234622a8655 // Nikotin- og tobaksafvænning	
* $FSIII#6eddbaf7-2a73-49d4-91e7-6138d419f58c // Afklarende samtale
* $FSIII#924e9828-84cf-4689-9551-0ebb6dc71b98 // Samtale om alkohol
* $FSIII#ab87c0b5-40be-4e0a-b749-d9f833bfed2d // Fysisk træning
* $FSIII#abe847e0-1ce0-44dc-a675-ce05b66f47e6 // Vejledning og introduktion til fysiske aktiviteter
* $FSIII#c9a99304-1788-43b7-b7be-e187b092ae9c // Kostvejledning
* $FSIII#cf7a55c2-7061-47ed-b7c5-e29620fe93bf // Diætbehandling
* $FSIII#d1e016b5-150a-4ac4-97ba-d3e19e28471e // Opfølgning
* $FSIII#e71b7d85-5c78-49c2-8624-8499d162317b // Sygdomshåndtering	
* $FSIII#ee5606ac-1bed-487e-aa3c-72dcc30ec037 // Behovssamtale	
* $FSIII#f30cab6d-2a42-4358-99d7-811127fb6e05 // Mental håndtering

ValueSet: KLConditionCodes119
Id: KLConditionCodes119
Title: "KLConditionCodes119"
Description: "Condition codes allowed in this implementation guide."
* ^experimental = false
* include codes from system $FSIII where concept descendent-of #d03da587-94dc-46e6-ba71-eb1e43ec7df6 //Kroppen
* include codes from system $FSIII where concept descendent-of #7b3b3587-4ddd-4b93-a81b-455bfc601492 //Hverdagsliv
* include codes from system $FSIII where concept descendent-of #b349c7ec-86c5-4c52-aaf2-9034d98b0e3b //Sundhedsadfærd
* $FSIII#0520a107-2bb0-47b8-8856-c53e27607e51 //Kognitiv funktion
* $FSIII#43ad3091-f684-4d6f-8885-20ecd1cf2255 //Kropspfattelse
* $FSIII#ba083ca7-fe46-41d0-acd5-85851ac8137f //Trivsel
* $FSIII#cb55874a-93d9-45c7-a25a-8ff677c24385 //Søvn og hvile

ValueSet: CarePlanCategories119
Id: CarePlanCategories119
Title: "CarePlanCategories"
Description: "The care plan categories used for §119"
* ^experimental = false
* $KLCommonCodes#9791e55a-656f-47eb-8fd5-c4a06b0a4662 //"Opfølgningsforløb efter §119"
* $KLCommonCodes#5c160c02-e858-4c1f-925a-71ed64844749 //"Interventionsforløb efter §119"
//kl-term update - set codesystem to $KLCommonCodes

ValueSet: DeliveryTypes119
Id: DeliveryTypes119
Title: "DeliveryTypes"
Description: "The delivery context types allowed in §119 prevention. Whether intervention is group based or delivered individually"
* ^experimental = false
* include codes from system $KLCommonCodes where concept descendent-of #3f79cee2-b148-4f2c-9cbd-387820e74685

ValueSet: EncounterClassCodes
Title: "KontaktKlasseKoder"
Description: "Codes to describe the mode of delivery of an encounter"
* ^experimental = false
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ActEncounterCode
* $KLCommonCodes#1b55a4b0-1156-4f58-b2df-b5c6014d9048 //"Telefonisk" KLCommonCareSocialCodes
* $KLCommonCodes#124be95d-6924-4609-9d2a-e7c73ae3ab3d //"Skærmbesøg" KLCommonCareSocialCodes