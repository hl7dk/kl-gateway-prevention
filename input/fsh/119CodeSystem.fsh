CodeSystem: Tempcodes
Id: Tempcodes
Title: "Tempcodes"
Description: "Tempcodes to be implemented in KL-term"
//* #7273c0b7-1a0d-4c4a-a202-c014b1ddd4a0 "Første kontakt i forløb"
* ^experimental = false
* ^caseSensitive = true
* #ef491570-7884-4acd-bcf7-43d6b2c64762 "Borger har ikke henvendt sig eller er udeblevet"


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
* Tempcodes#ef491570-7884-4acd-bcf7-43d6b2c64762
//kl-term update - change Tempcodes to KLCommonCodes
// ValueSet: ExtendedEncounterTypes
// Id: ExtendedEncounterTypes
// Title: "ExtendedEncounterTypes"
// Description: "Extension on encountertype valueset, to be implemented in KL-term and FKI"
// * ^experimental = false
// * include codes from valueset http://fhir.kl.dk/term/ValueSet/KLEncounterTypes
//* Tempcodes#7273c0b7-1a0d-4c4a-a202-c014b1ddd4a0

ValueSet: ServiceTypes119
Id: ServiceTypes119
Title: "ServiceTypes"
Description: "The service types allowed in §119" 
* ^experimental = false
* $KLCommonCodes#a71921ea-fe83-441d-933b-cc21d0b3c8c3 //Sundhedsfremme og forebyggelse

ValueSet: KLInterventionCodes119
Id: KLInterventionCodes119
Title: "KLInterventionCodes119"
Description: "Intervention codes allowed in this implementation guide. Notice that codes are excluded to prevent reporting on concepts that are inactivated in the simplification."
* ^experimental = false
* include codes from valueset http://fhir.kl.dk/term/ValueSet/KLPreventionInterventionsFSIII
* exclude $FSIII#c203c6b5-3be0-40a8-8204-e93751deabf5

ValueSet: KLConditionCodes119
Id: KLConditionCodes119
Title: "KLConditionCodes119"
Description: "Condition codes allowed in this implementation guide. . Notice that codes are excluded to prevent reporting on concepts that are inactivated in the simplification."
* ^experimental = false
* include codes from valueset $KLConditionCodes119
* exclude $FSIII#525b5dd8-d62b-4efa-bf66-262ac47eca5b

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
