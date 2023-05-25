Profile: KLGateway119Encounter
Parent: Encounter
Id: klgateway-119-encounter
Title: "KLGateway119Encounter"
Description: "Encounter for first planned visits and all executed activities in a §119 care pathway"
* identifier ..0
* statusHistory ..0
* class.version ..0
* class.display ..0
* class.userSelected ..0
* classHistory ..0
//* type from ExtendedEncounterTypes (required)
* type.coding 0..0
* type.coding.version ..0
* type.coding.display 0..0
* type.coding.userSelected ..0
* type.text ..0
* serviceType ..0
* priority ..0
* subject 1..1
* subject only Reference(klgateway-119-citizen)
* subject ^type.aggregation = #bundled
* episodeOfCare ..0
* basedOn ..1
* basedOn only Reference(klgateway-119-servicerequest)
* basedOn ^type.aggregation = #bundled
* extension contains
   BasedOnCarePlanExtension named basedOnCarePlan 0..1
* extension[basedOnCarePlan].valueReference ^type.aggregation = #bundled
* participant ..0
* appointment ..0
* period 1..1
* period.start 1..1
* period.end ..1
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ..0
* hospitalization ..0
* location ..0
* serviceProvider ..0
* partOf ..0

//Danish descriptions
* status ^short = "[DK] kontaktstatus"
* class ^short = "[DK] kontaktklasse"
* period.start ^short = "[DK] kontaktstart"
* period.end ^short = "[DK] kontaktslut"
* subject ^short = "[DK] kontaktsubjekt"
* basedOn ^short = "[DK] kontaktanledning"
* extension[basedOnCarePlan] ^short = "[DK] kontaktBaseretPå"


Extension: BasedOnCarePlanExtension
Title:     "basedOnCarePlanExtension"
Description: "Extension for pointing to the careplan describing why this encounter is taking place, will be part of R5 without needing the extension"
* value[x] 1..1
* value[x] only Reference(klgateway-119-care-plan)
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "Encounter"

Instance: BrunoKontaktAfklarende
InstanceOf: klgateway-119-encounter
Title: "BrunoKontaktAfklarende"
Description: "Brunos kontakt, hvor der er udført en afklarende samtale"
Usage: #example
* status = http://hl7.org/fhir/encounter-status#finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* period.start = 2022-06-02T12:10:00.000Z
* subject = Reference(BrunoTestElmer)
* basedOn = Reference(BrunoRequestInformation)

Instance: BrunoKontakt1Kost
InstanceOf: klgateway-119-encounter
Title: "BrunoKontakt1Kost"
Description: "Brunos kontakt, hvor han har første kostvejledning"
Usage: #example
* status = http://hl7.org/fhir/encounter-status#finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* period.start = 2022-06-09T10:00:00.000Z
* subject = Reference(BrunoTestElmer)
* basedOn = Reference(BrunoRequestInformation)