Profile: KLGateway119CarePlan
Parent: CarePlan
Id: klgateway-119-care-plan
Title: "KLGateway119CarePlan"
Description: "Care plans for §119 health promotion and disease prevention in Danish Municipalities."

//Requirements
* status ^definition = "Shall be either unknown, entered-in-error, or the status of the intervention at the time of reporting"
* intent = #plan
* category 1..1
* category from CarePlanCategories119 (required)
* activity.detail.status ^definition = "Shall be either unknown, or cancelled, or the activity status of the intervention at the time of reporting"
* activity.detail.statusReason from CancellationTypes
* subject only Reference(klgateway-119-citizen) //borger
* subject ^type.aggregation = #bundled
* period 1..1
* period.start 1..1 //Bevillingsdato
//period.end er mulig men ikke obligatorisk
* activity 1..1
* activity.reference 0..0
* activity.detail 1.. 
* activity.detail.code 0..0 
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


//0..0 kardinaliteter
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* replaces ..0
* partOf ..0
* activity.detail.reasonReference 0..0
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
* activity.detail.reasonReference 0..0
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
* activity.outcomeReference 0..0
* note ..0

//Danish descriptions
* category ^short = "[DK] indsatsforløbKategori"
* period.start ^short = "[DK] indsatsforløbBevillingstid"
* period.end ^short = "[DK] indsatforløbAfslutningstid"
* activity.detail.statusReason ^short = "[DK] indsatsforløbForklaringAfStatus"
* activity.detail.performer ^short = "[DK] indsatsforløbleverandør"
* subject ^short = "[DK] indsatssubjekt"
* activity.detail.scheduledTiming.repeat.count ^short = "[DK] indsatsforløbAntalGange"
* activity.detail.scheduledTiming.repeat.duration ^short = "[DK] indsatsforløbLængdeAfGange"
* activity.detail.scheduledTiming.repeat.durationUnit ^short = "[DK] indsatsforløbLængdeAfGangeEnhed"
* status ^short = "[DK] indsatsforløbsstatus"
* intent ^short = "[DK] indsatsforløbhensigt"
* activity.detail.status ^short = "[DK] indsatsforløbsAktivitetsstatus"

* obeys klgateway-119-care-plan-1
* obeys klgateway-119-care-plan-2

//Fhir path that makes cancallation type mandatory if status is cancelled or stopped.
Invariant: klgateway-119-care-plan-1
Description: "status reason is mandatory if status is cancelled or stopped. Otherwise it is prohibited"
Severity: #error
Expression: "activity.detail.all(statusReason.exists() = (status = 'cancelled' or status = 'stopped'))"


//Gør scheduled timing mandatory hvis indsatsforløbet har kategorien interventionsforløb, og ellers er der frit valg 
Invariant: klgateway-119-care-plan-2
Description: "scheduled timing is mandatory if the intervention is certain types of training. Otherwise it is not mandatory"
Severity: #error
Expression: "category.coding.code = '5c160c02-e858-4c1f-925a-71ed64844749' implies activity.detail.scheduledTiming.exists()"


Instance: BrunoforloebKost
InstanceOf: klgateway-119-care-plan
Title: "BrunoforløbKost"
Description: "Brunos forløb vedr. kostvejledning"
Usage: #example
* category = Tempcodes#5c160c02-e858-4c1f-925a-71ed64844749 //kl-term update "Intervention efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.scheduledTiming.repeat.count = 4
* activity.detail.scheduledTiming.repeat.duration = 20
* activity.detail.scheduledTiming.repeat.durationUnit = http://unitsofmeasure.org#min
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)

Instance: BrunoforloebKostValidationerror
InstanceOf: klgateway-119-care-plan
Title: "BrunoforloebKost_validationerror"
Description: "BrunoforloebKost_validationerror"
Usage: #example
* category = Tempcodes#9791e55a-656f-47eb-8fd5-c4a06b0a4662 //kl-term update "Intervention efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#in-progress
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)

Instance: BrunoforloebKostAfbrudt
InstanceOf: klgateway-119-care-plan
Title: "BrunoforløbKost_afbrudt"
Description: "Brunos forløb vedr. kostvejledning, der er afbrudt fordi Bruno aktivt har fravalgt det pga. anden træning"
Usage: #example
* category = Tempcodes#5c160c02-e858-4c1f-925a-71ed64844749 //kl-term update "Intervention efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#unknown
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#cancelled
* activity.detail.statusReason = Tempcodes#a3f2bd01-078b-486e-81be-797d192ad7bd //afbrudt pga anden træning
* activity.detail.scheduledTiming.repeat.count = 4
* activity.detail.scheduledTiming.repeat.duration = 20
* activity.detail.scheduledTiming.repeat.durationUnit = http://unitsofmeasure.org#min
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)

Instance: BrunoforloebKostAfbrudtValidationerror
InstanceOf: klgateway-119-care-plan
Title: "BrunoforloebKost_afbrudt_validationerror"
Description: "BrunoforloebKost_afbrudt_validationerror"
Usage: #example
* category = Tempcodes#5c160c02-e858-4c1f-925a-71ed64844749 //kl-term update "Intervention efter §119 sundhedsfremm og forebyggelse"
* period.start = 2022-06-02
* status = http://hl7.org/fhir/request-status#unknown
* intent = http://hl7.org/fhir/care-plan-intent#plan
* subject = Reference(BrunoTestElmer)
* activity.detail.status = http://hl7.org/fhir/care-plan-activity-status#cancelled
* activity.detail.scheduledTiming.repeat.count = 4
* activity.detail.scheduledTiming.repeat.duration = 20
* activity.detail.scheduledTiming.repeat.durationUnit = http://unitsofmeasure.org#min
* activity.detail.performer = Reference(UdfoererAfBrunosForebyggelse)