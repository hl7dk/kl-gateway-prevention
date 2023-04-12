Profile: KLGateway119PlannedIntervention
Parent: CarePlan
Id: klgateway-119-planned-intervention
Title: "KLGateway119PlannedIntervention"
Description: "Planned interventions for §119 prevention/health promotion in Danish Municipalities."

//Requirements
* status ^definition = "Shall be either unknown, entered-in-error, or the status of the intervention at the time of reporting"
* intent = #plan
* activity.detail.status ^definition = "Shall be either unknown, or cancelled, or the activity status of the intervention at the time of reporting"
* activity.detail.statusReason from CancellationTypes //hvilken type, når interventionen stopper, for at lave en ny, fordi der er sendt en ny GGOP

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
* activity.detail.code.coding contains level2 0..1 and level2temp 0..1 and level3 0..1 MS
* activity.detail.code.coding[level2].system = $FSIII
* activity.detail.code.coding[level2] from KLInterventionCodes119
* activity.detail.code.coding[level2temp].system = Canonical(Tempcodes)
* activity.detail.code.coding[level2temp] from KLInterventionCodes119temp
* activity.detail.code.coding[level3].system = "http://gateway.kl.dk/1.0/CodeSystem/LocallyDefinedInterventions"
* activity.detail.code.coding[level3].code 1..1
* activity.detail.code.coding[level3].display 1..1
* activity.detail.code.coding[level3] ^definition = "Shall contain locally defined code if it is a locally defined level 3 intervention"
* activity.detail.reasonCode ..0
* activity.detail.scheduled[x] ..1 //gør det muligt at lægge gentagelser på
//* activity.detail.scheduledTiming.repeat.boundsPeriod.start 1..1
* activity.detail.scheduledTiming.repeat.count 1..1
* activity.detail.scheduledTiming.repeat.duration 1..1
* activity.detail.scheduledTiming.repeat.durationUnit 1..1
* activity.detail.scheduledTiming.repeat.durationUnit = http://unitsofmeasure.org#min
* activity.detail.performer 1..1 //indsatsudfører
* activity.detail.performer only Reference(klgateway-119-organization)
* activity.detail.performer ^type.aggregation = #bundled
* extension contains
   BasedOnServiceRequestExtension named basedOnServiceRequest 1..1

//* extension[basedOnServiceRequest].valueReference only Reference(klgateway-119-servicerequest) //GGOP'en
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
* basedOn ..0
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
* activity.detail.reasonReference 0..1
* activity.detail.goal ..0
* activity.detail.doNotPerform ..0
* activity.detail.scheduledString ..0
* activity.detail.scheduledPeriod ..0
* activity.detail.scheduledTiming.code 0..0
* activity.detail.scheduledTiming.event 0..0
* activity.detail.scheduledTiming.repeat.boundsPeriod.end 0..0
* activity.detail.scheduledTiming.repeat.frequency 0..0
* activity.detail.scheduledTiming.repeat.durationMax 0..0
* activity.detail.scheduledTiming.repeat.boundsDuration 0..0
* activity.detail.scheduledTiming.repeat.boundsRange 0..0
* activity.detail.scheduledTiming.repeat.countMax 0..0
* activity.detail.scheduledTiming.repeat.dayOfWeek 0..0
* activity.detail.location ..0
* activity.detail.product[x] ..0
* activity.detail.dailyAmount ..0
* activity.detail.quantity ..0
* activity.detail.description ..0
* note ..0

//Danish descriptions
* activity.detail.code.coding ^short = "[DK] indsatsskode"
* period.start ^short = "[DK] indsatsbevillingstid"
* period.end ^short = "[DK] indsatsafslutningstid"
* status ^short = "[DK] indsatsstatus"
* intent ^short = "[DK] indsatshensigt"
* subject ^short = "[DK] indsatssubjekt"
* activity.reference ^short = "[DK] indsatsAnledning"
* activity.detail.reasonReference ^short = "[DK] indsatsbegrundelse"
* activity.outcomeReference ^short = "[DK] indsatsgennemførtAktivitet"
* activity.detail.status ^short = "[DK] indsatsAktivitetsstatus"
* activity.detail.statusReason ^short = "[DK] indsatsAktivitetForklaringAfStatus"
//* activity.detail.scheduledTiming.repeat.boundsPeriod.start ^short = "[DK] indsatsAktivitetPlanlagtOpstartsdato"
* activity.detail.scheduledTiming.repeat.count ^short = "[DK] indsatsAktivitetAntalGange"
* activity.detail.scheduledTiming.repeat.duration ^short = "[DK] indsatsAktivitetLængdeAfGange"
* activity.detail.scheduledTiming.repeat.durationUnit ^short = "[DK] indsatsAktivitetLængdeAfGangeEnhed"
* activity.detail.performer ^short = "[DK] indsatsleverandør"
* obeys klgateway-119-intervention-2
* obeys klgateway-119-intervention-1

Invariant: klgateway-119-intervention-1
Description: "status reason is mandatory if status is cancelled or stopped. Otherwise it is prohibited"
Severity: #error
Expression: "activity.detail.all(statusReason.exists() = (status = 'cancelled' or status = 'stopped'))"

Invariant: klgateway-119-intervention-2
Description: "scheduled timing is mandatory if the intervention is certain types of interventions. Otherwise it is prohibited"
Severity: #error
Expression: "activity.detail.all(scheduledTiming.exists() = (
       code.coding.code = 'e78c43e3-c512-44b4-ad30-2de43481d9b3'
    or code.coding.code = 'f490d484-fa43-400b-b678-e718c6927708'
    or code.coding.code = 'abade2c3-0922-4ec1-b85a-263c85d056fa'
    or code.coding.code = '122fe9a2-9bff-4c9c-87df-af1e096ad7a6'
    or code.coding.code = '9143b4b7-7211-45ed-8892-9afb1f2d20b7'
    or code.coding.code = 'e31355bd-b1a6-4fab-a339-8cec309cad81'
    or code.coding.code = 'fea40bf1-731f-4d7e-a1d0-38555a553cb7'
    or code.coding.code = '37d2b78b-4988-4225-afa0-a9642402df38'
    or code.coding.code = 'eac36593-ad34-4abe-9de0-c408fe7eb3e5'
    or code.coding.code = '051978fc-599e-4e30-9746-d6d0547a0361'
    or code.coding.code = 'fe0588d3-d12b-455f-b84c-1fee3c85bfd8'
    or code.coding.code = 'd83d524f-a01b-4fa0-9324-3bb56c1e79fe'
    or code.coding.code = 'a616e57f-c780-442e-8c29-b22a72fbe88c'
    or code.coding.code = 'a05f0199-6b1f-419f-800c-f6348f93751e'
    or code.coding.code = '1b325914-3a06-437d-9f7e-cd0edbbda32e'
    or code.coding.code = '30836f9d-c84a-4e48-8d5c-21862747466a'))"

//"Vejledning og introduktion til fysiske aktiviteter på hold"
// "Vejledning og introduktion til fysiske aktiviteter individuelt"
// "Fysisk træning på hold"
// "Fysisk træning individuelt"
// "Færdighedstræning på hold"
// "Færdighedstræning individuelt"
// "Kostvejledning på hold"
// "Kostvejledning individuelt"
// "Madlavning i praksis på hold"
// "Madlavning i praksis individuelt"
// "Tobaksafvænning på hold"
// "Tobaksafvænning individuelt"
// "Sygdomshåndtering på hold"
// "Sygdomshåndtering individuelt"
// "Mental håndtering på hold"
// "Mental håndtering individuelt"

//make fhir path that makes cancallation type mandatory if status is cancelled or stopped.
//Gør scheduled timing mandatory hvis indsatsen er bestemte typer træning, og ellers ikke tilladt. 

Extension: BasedOnServiceRequestExtension
Title:     "basedOnServiceRequestExtension"
Description: "Extension for pointing to the servicerequest, that started an intervention"
* value[x] 1..1
* value[x] only Reference(klgateway-119-servicerequest)


Instance: BrunoAfklarendeSamtale
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoAfklarendeSamtale"
Description: "Bruno's afklarende Samtale"
Usage: #example
* activity.detail.code.coding[level2] = $FSIII#6eddbaf7-2a73-49d4-91e7-6138d419f58c //Afklarende samtale
* period.start = 2022-05-31
* period.end = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* extension[basedOnServiceRequest].valueReference = Reference(BrunoRequestInformation) 
* activity.outcomeReference[+] = Reference(BrunoKontaktAfklarende)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#completed
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)

Instance: BrunoKostvejledning
InstanceOf: klgateway-119-planned-intervention
Title: "BrunoKostvejledning"
Description: "Bruno's Kostvejledning"
Usage: #example
* activity.detail.code.coding[level2temp] = Tempcodes#37d2b78b-4988-4225-afa0-a9642402df38 "Kostvejledning individuelt"
* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* extension[basedOnServiceRequest].valueReference = Reference(BrunoRequestInformation) 
* activity.outcomeReference = Reference(BrunoKontakt1Kost)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.scheduledTiming.repeat.count = 4
* activity.detail.scheduledTiming.repeat.duration = 20
* activity.detail.scheduledTiming.repeat.durationUnit = http://unitsofmeasure.org#min
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)