Profile: KLGateway119DeliveryReport
Parent: Bundle
Id: klgateway-119-delivery-report
Title: "KLGateway119DeliveryReport"
Description: "Delivery report to deliver data for each citizen."
* meta.profile 1..1
* meta.profile = "http://fhir.kl.dk/prevention/StructureDefinition/klgateway-119-delivery-report"
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link 0..0
* entry.link 0..0
* entry.resource 1..1
* entry.resource only
    klgateway-119-condition or
    klgateway-119-focus-condition or
    klgateway-119-care-plan or
    klgateway-119-planned-intervention or
    klgateway-119-encounter or
    klgateway-119-organization or
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
// * obeys gateway-119-report-1
// * obeys gateway-119-report-2


// Invariant: gateway-119-report-1
// Description: "All condition resources shall conform to either klgateway-119-condition profile, or klgateway-119--focus-condition profile"
// Severity: #error
// Expression: "entry.select(resource as Condition).all(
//     $this.conformsTo('http://fhir.kl.dk/prevention/StructureDefinition/klgateway-119-condition')
//  or $this.conformsTo('http://fhir.kl.dk/prevention/StructureDefinition/klgateway-119-focus-condition'))"

// Invariant: gateway-119-report-2
// Description: "All CarePlan resources shall conform to either klgateway-119-careplan profile, or klgateway-119-planned-intervention profile"
// Severity: #error
// Expression: "entry.select(resource as CarePlan).all(
//     $this.conformsTo('http://fhir.kl.dk/prevention/StructureDefinition/klgateway-119-care-plan')
//  or $this.conformsTo('http://fhir.kl.dk/prevention/StructureDefinition/klgateway-119-planned-intervention'))"

// Invariant: gateway-119-report-3
// Description: "Planned interventions with a treatment focus, should have its basedOn attribute populated with a carePlan with category-code 'interventionsforløb §119'."
// Severity: #error
// Expression: "entry.select((resource as CarePlan).where(
//     activity.detail.code.coding.code = 'e78c43e3-c512-44b4-ad30-2de43481d9b3'
//     or activity.detail.code.coding.code = 'f490d484-fa43-400b-b678-e718c6927708'
//     or activity.detail.code.coding.code = 'abade2c3-0922-4ec1-b85a-263c85d056fa'
//     or activity.detail.code.coding.code = '122fe9a2-9bff-4c9c-87df-af1e096ad7a6'
//     or activity.detail.code.coding.code = '9143b4b7-7211-45ed-8892-9afb1f2d20b7'
//     or activity.detail.code.coding.code = 'e31355bd-b1a6-4fab-a339-8cec309cad81'
//     or activity.detail.code.coding.code = 'fea40bf1-731f-4d7e-a1d0-38555a553cb7'
//     or activity.detail.code.coding.code = '37d2b78b-4988-4225-afa0-a9642402df38'
//     or activity.detail.code.coding.code = 'eac36593-ad34-4abe-9de0-c408fe7eb3e5'
//     or activity.detail.code.coding.code = '051978fc-599e-4e30-9746-d6d0547a0361'
//     or activity.detail.code.coding.code = 'fe0588d3-d12b-455f-b84c-1fee3c85bfd8'
//     or activity.detail.code.coding.code = 'd83d524f-a01b-4fa0-9324-3bb56c1e79fe'
//     or activity.detail.code.coding.code = 'a616e57f-c780-442e-8c29-b22a72fbe88c'
//     or activity.detail.code.coding.code = 'a05f0199-6b1f-419f-800c-f6348f93751e'
//     or activity.detail.code.coding.code = '1b325914-3a06-437d-9f7e-cd0edbbda32e'
//     or activity.detail.code.coding.code = '30836f9d-c84a-4e48-8d5c-21862747466a')).basedOn.resolve().category.coding.code = '5c160c02-e858-4c1f-925a-71ed64844749'"



Instance: BrunoIndberetningsrapport
InstanceOf: klgateway-119-delivery-report
Description: "Indberetning for Bruno"
Usage: #example
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Patient/BrunoTestElmer"
* entry[=].resource = BrunoTestElmer
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/UdfoererAfBrunosForebyggelse"
* entry[=].resource = UdfoererAfBrunosForebyggelse
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Organization/AfsenderAfBrunosHenvisning"
* entry[=].resource = AfsenderAfBrunosHenvisning
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Condition/BrunoAktionsdiagnoseRequest"
* entry[=].resource = BrunoAktionsdiagnoseRequest
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/ServiceRequest/BrunoRequestInformation"
* entry[=].resource = BrunoRequestInformation
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/BrunoAfklarendeSamtale"
* entry[=].resource = BrunoAfklarendeSamtale
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Encounter/BrunoKontaktAfklarende"
* entry[=].resource = BrunoKontaktAfklarende
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/BrunoforloebKost"
* entry[=].resource = BrunoforloebKost
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/CarePlan/BrunoKostvejledning"
* entry[=].resource = BrunoKostvejledning
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Encounter/BrunoKontakt1Kost"
* entry[=].resource = BrunoKontakt1Kost
* entry[+].fullUrl = "https://care-gateway.test001.ehealth.sundhed.dk/fhir/Condition/BrunoTilstand"
* entry[=].resource = BrunoTilstand