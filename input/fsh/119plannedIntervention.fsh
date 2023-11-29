Profile: KLGateway119PlannedIntervention
Parent: CarePlan
Id: klgateway-119-planned-intervention
Title: "KLGateway119PlannedIntervention"
Description: "Planned interventions for §119 prevention/health promotion in Danish Municipalities."

//Requirements
* status ^definition = "Shall be either unknown, entered-in-error, or the status of the intervention at the time of reporting"
* intent = #plan
* activity.detail.status ^definition = "Shall be either unknown, or cancelled, or the activity status of the intervention at the time of reporting"
//* activity.detail.statusReason from CancellationTypes //hvilken type, når interventionen stopper, for at lave en ny, fordi der er sendt en ny GGOP
* basedOn ..1
* basedOn only Reference(klgateway-119-care-plan)
* basedOn ^type.aggregation = #bundled
* subject only Reference(klgateway-119-citizen) //borger
* subject ^type.aggregation = #bundled
* period 1..1
* period.start 1..1 //Bevillingsdato
//period.end er mulig men ikke obligatorisk
* activity 1..1
* activity.outcomeReference only Reference(klgateway-119-encounter) //kontakter
* activity.outcomeReference ^type.aggregation = #bundled
* activity.reference 0..0
* activity.detail 1.. 
* activity.detail.code 1..1 //Indsatskoder niveau 2 og 3
* activity.detail.code.coding ^slicing.discriminator.type = #value
* activity.detail.code.coding ^slicing.discriminator.path = "system"
* activity.detail.code.coding ^slicing.rules = #closed
* activity.detail.code.coding contains level2 0..1 and level3 0..1 MS
* activity.detail.code.coding[level2].system = $FSIII
* activity.detail.code.coding[level2] from KLInterventionCodes119 //kl-term update Set to
//kl-term update delete two lines above
* activity.detail.code.coding[level3].system = "http://gateway.kl.dk/1.0/CodeSystem/LocallyDefinedInterventions"
* activity.detail.code.coding[level3].code 1..1
* activity.detail.code.coding[level3].display 1..1
* activity.detail.code.coding[level3] ^definition = "Shall contain locally defined code if it is a locally defined level 3 intervention"
* activity.detail.extension contains DeliveryType named deliveryType 1..1
* activity.detail.extension[deliveryType].valueCodeableConcept.coding from DeliveryTypes119 (required)
* activity.detail.reasonCode ..0
* activity.detail.scheduled[x] 0..0
* activity.detail.performer 1..1 //indsatsudfører
* activity.detail.performer only Reference(klgateway-119-organization)
* activity.detail.performer ^type.aggregation = #bundled
* extension contains
   BasedOnServiceRequestExtension named basedOnServiceRequest 0..1
* extension[basedOnServiceRequest].valueReference ^type.aggregation = #bundled

// relation mellem tilstand og indsats
* activity.detail.reasonReference only Reference(klgateway-119-condition)
* activity.detail.reasonReference MS
* activity.detail.reasonReference ^definition = "Reason for this intervention. Must contain all conditions known to be addressed by this intervention"
* activity.detail.reasonReference ^type.aggregation = #bundled

//0..0 kardinaliteter
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* replaces ..0
* partOf ..0
* category ..0
* title ..0
* description ..0
* encounter ..0
* created ..0
* author ..0
* contributor ..0
* careTeam 0..0
* addresses ..0
* supportingInfo ..0
* goal ..0
* activity.outcomeCodeableConcept ..0
* activity.progress ..0
* activity.detail.kind ..0
* activity.detail.instantiatesCanonical ..0
* activity.detail.instantiatesUri ..0
* activity.detail.goal ..0
* activity.detail.doNotPerform ..0
// * activity.detail.scheduledString ..0
// * activity.detail.scheduledPeriod ..0
// * activity.detail.scheduledTiming.code 0..0
// * activity.detail.scheduledTiming.event 0..0
// * activity.detail.scheduledTiming.repeat.boundsPeriod.end 0..0
// * activity.detail.scheduledTiming.repeat.frequency 0..0
// * activity.detail.scheduledTiming.repeat.durationMax 0..0
// * activity.detail.scheduledTiming.repeat.boundsDuration 0..0
// * activity.detail.scheduledTiming.repeat.boundsRange 0..0
// * activity.detail.scheduledTiming.repeat.countMax 0..0
// * activity.detail.scheduledTiming.repeat.dayOfWeek 0..0
* activity.detail.statusReason 0..0
* activity.detail.location ..0
* activity.detail.product[x] ..0
* activity.detail.dailyAmount ..0
* activity.detail.quantity ..0
* activity.detail.description ..0
* activity.outcomeReference 0..0
* note ..0

//Danish descriptions
* activity.detail.code.coding ^short = "[DK] indsatsskode"
* period.start ^short = "[DK] indsatsbevillingstid"
* period.end ^short = "[DK] indsatsafslutningstid"
* extension[basedOnServiceRequest] ^short = "[DK] indsatsAnledning"
* activity.detail.performer ^short = "[DK] indsatsleverandør"
* subject ^short = "[DK] indsatssubjekt"
* activity.detail.reasonReference ^short = "[DK] indsatsbegrundelse"
* basedOn ^short = "[DK] indsatsDelAfPlan"
* status ^short = "[DK] indsatsstatus"
* intent ^short = "[DK] indsatshensigt"
* activity.detail.status ^short = "[DK] indsatsAktivitetsstatus"
* obeys klgateway-119-intervention-1
* obeys klgateway-119-intervention-2

Invariant: klgateway-119-intervention-1
Description: "Plannend interventions with a treatment focus, should have its basedOn attribute populated with a carePlan."
Severity: #error
Expression: "activity.detail.code.coding.code = 'f30cab6d-2a42-4358-99d7-811127fb6e05'
    or activity.detail.code.coding.code = 'e71b7d85-5c78-49c2-8624-8499d162317b'
    or activity.detail.code.coding.code = '01a500f6-c221-4fd0-b518-cd361218b60d'
    or activity.detail.code.coding.code = 'c203c6b5-3be0-40a8-8204-e93751deabf5'
    or activity.detail.code.coding.code = 'c9a99304-1788-43b7-b7be-e187b092ae9c'
    or activity.detail.code.coding.code = 'ab87c0b5-40be-4e0a-b749-d9f833bfed2d'
    or activity.detail.code.coding.code = '61692d91-69b8-4830-9453-3d58454e49d3'
    or activity.detail.code.coding.code = 'abe847e0-1ce0-44dc-a675-ce05b66f47e6'
    or activity.detail.code.coding.code = 'd1e016b5-150a-4ac4-97ba-d3e19e28471e'
    or activity.detail.code.coding.code = 'cf7a55c2-7061-47ed-b7c5-e29620fe93bf'
    or activity.detail.code.coding.code = '924e9828-84cf-4689-9551-0ebb6dc71b98' implies basedOn.exists()"


Invariant: klgateway-119-intervention-2
Description: "does not have a reference to careplan if the intervention is a certain type of intervention"
Severity: #error
Expression: "activity.detail.code.coding.code = '03a3ebdb-9e2d-4be1-b32b-42f0bd2a3362'
    or activity.detail.code.coding.code = 'ee5606ac-1bed-487e-aa3c-72dcc30ec037'
    or activity.detail.code.coding.code = '6eddbaf7-2a73-49d4-91e7-6138d419f58c' implies basedOn.empty()"

Extension: BasedOnServiceRequestExtension
Title:     "basedOnServiceRequestExtension"
Description: "Extension for pointing to the servicerequest, that started an intervention"
* value[x] 1..1
* value[x] only Reference(klgateway-119-servicerequest)
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "CarePlan"

Extension: DeliveryType
Title: "DeliveryType"
Description: "Extension for a code that specifies some context of how a treatment-activity is delivered to a patient"
* value[x] only CodeableConcept
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "CarePlan.activity.detail"


Instance: BrunoAfklarendeSamtale
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoAfklarendeSamtale"
Description: "Bruno's afklarende Samtale"
Usage: #example
* activity.detail.code.coding[level2] = $FSIII#6eddbaf7-2a73-49d4-91e7-6138d419f58c //Afklarende samtale
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"
* period.start = 2022-05-31
* period.end = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* extension[basedOnServiceRequest].valueReference = Reference(BrunoRequestInformation)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#completed
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)

Instance: BrunoKostvejledning
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoKostvejledning"
Description: "Bruno's Kostvejledning"
Usage: #example
* activity.detail.code.coding[level2] = $FSIII#c9a99304-1788-43b7-b7be-e187b092ae9c "Kostvejledning"
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"

* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* extension[basedOnServiceRequest].valueReference = Reference(BrunoRequestInformation)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)
* basedOn = Reference(BrunoforloebKost)

Instance: BrunoKostvejledningValidationError
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoKostvejledningValidationError"
Description: "BrunoKostvejledningValidationError"
Usage: #example
* activity.detail.code.coding[level2] = $FSIII#c9a99304-1788-43b7-b7be-e187b092ae9c "Kostvejledning"
* activity.detail.extension[deliveryType].valueCodeableConcept = $KLCommonCodes#8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"
* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* extension[basedOnServiceRequest].valueReference = Reference(BrunoRequestInformation)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)
