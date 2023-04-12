Profile: KLGateway119DeliveryReport
Parent: Bundle
Id: klgateway-119-delivery-report
Title: "KLGateway119DeliveryReport"
Description: "Delivery report to deliver data for each citizen."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link 0..0
* entry.link 0..0
* entry.resource 1..1
* entry.resource only
    Condition or
    klgateway-119-encounter or
    klgateway-119-organization or
    klgateway-119-planned-intervention or
    klgateway-119-citizen or
    klgateway-119-servicerequest
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains citizen 1..1
* entry[citizen].resource only
    klgateway-119-citizen
* entry.resource ^short = "Citizen and content constrained to known profiles"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0
* entry[citizen] ^short = "[DK] indberetningsrapportBorger"
* entry ^short = "[DK] indberetningsrapportIndhold"
* obeys gateway-119-report-1


Invariant: gateway-119-report-1
Description: "All condition resources shall conform to either klgateway-119-condition profile, or klgateway-119--focus-condition profile"
Severity: #error
Expression: "entry.ofType(Condition).all(
    resource.conformsTo('http://fhir.kl.dk/rehab/StructureDefinition/klgateway-119-condition')
 or resource.conformsTo('http://fhir.kl.dk/rehab/StructureDefinition/klgateway-119-focus-condition'))"

Instance: BrunoIndberetningsrapport
InstanceOf: klgateway-119-delivery-report
Description: "Indberetning for Bruno"
Usage: #example
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* entry[+].fullUrl = "Patient/BrunoTestElmer"
* entry[=].resource = BrunoTestElmer
* entry[+].fullUrl = "Organization/UdfoererAfBrunosForebyggelse"
* entry[=].resource = UdfoererAfBrunosForebyggelse
* entry[+].fullUrl = "Organization/AfsenderAfBrunosHenvisning"
* entry[=].resource = AfsenderAfBrunosHenvisning
* entry[+].fullUrl = "Condition/BrunoAktionsdiagnoseRequest"
* entry[=].resource = BrunoAktionsdiagnoseRequest
* entry[+].fullUrl = "ServiceRequest/BrunoRequestInformation"
* entry[=].resource = BrunoRequestInformation
* entry[+].fullUrl = "CarePlan/BrunoAfklarendeSamtale"
* entry[=].resource = BrunoAfklarendeSamtale
* entry[+].fullUrl = "Encounter/BrunoKontaktAfklarende"
* entry[=].resource = BrunoKontaktAfklarende
* entry[+].fullUrl = "CarePlan/BrunoKostvejledning"
* entry[=].resource = BrunoKostvejledning
* entry[+].fullUrl = "Encounter/BrunoKontakt1Kost"
* entry[=].resource = BrunoKontakt1Kost
* entry[+].fullUrl = "Condition/BrunoTilstand"
* entry[=].resource = BrunoTilstand