Profile:        KLGateway119ServiceRequest
Parent:         ServiceRequest
Id:             klgateway-119-servicerequest
Title:          "KLGateway119ServiceRequest"
Description:    "Referal or request for prevention/health promotion to a Danish municipalities"
//Requirement pertaining to §119
* requester 0..1
* requester only Reference(klgateway-119-organization) //organization used for people from the outside, KLCommonPractitioner for internal requests
* requester ^type.aggregation = #bundled
* code.coding from ServiceTypes119
* subject only Reference(klgateway-119-citizen)
* subject ^type.aggregation = #bundled
* authoredOn 1..1
* reasonReference only Reference(klgateway-119-focus-condition) //May be there (119)
* reasonReference ^type.aggregation = #bundled
* replaces 0..1
* replaces only Reference(klgateway-119-servicerequest)
* replaces ^type.aggregation = #bundled
* intent = http://hl7.org/fhir/request-status#plan

//Setting 0..0 cardinalities
* identifier 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* requisition 0..0
* category 0..0
* priority 0..0
* doNotPerform 0..0
* orderDetail 0..0
* quantity[x] 0..0
* encounter 0..0
* occurrence[x] 0..0
* asNeeded[x] 0..0
* performerType 0..0
* performer 0..0
* locationCode 0..0
* locationReference 0..0
* reasonCode 0..0
* insurance 0..0
* supportingInfo 0..0
* specimen 0..0
* bodySite 0..0
* note 0..0
* patientInstruction 0..0
* relevantHistory 0..0
* orderDetail 0..0

//Adding shorts for Danish descriptions
* requester ^short = "[DK] anledningAnsvarlig"
* status ^short = "[DK] anledningsStatus"
* intent ^short = "[DK] anledningsHensigt"
* code.coding ^short = "[DK] anledningsIndsats"
* reasonReference ^short = "[DK] anledningsbegrundelse"
* subject ^short = "[DK] anledningsSubjekt"
* authoredOn ^short = "[DK] anledningstid"
* replaces ^short = "[DK] anledningErstatter"

Instance: BrunoRequestInformation
InstanceOf: klgateway-119-servicerequest
Title: "BrunoRequestInformation"
Description: "Information fra Brunos henvisning, der er baggrunden for at igangsætte indsatsen i kommunen"
Usage: #example
* requester = Reference(AfsenderAfBrunosHenvisning)
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/request-status#plan
* code.coding = $KLCommonCodes#a71921ea-fe83-441d-933b-cc21d0b3c8c3
* reasonReference = Reference(BrunoAktionsdiagnoseRequest)
* subject = Reference(BrunoTestElmer)
* authoredOn = 2022-05-29

Instance: BrunoTidligereRequestInformation
InstanceOf: klgateway-119-servicerequest
Title: "BrunoTidligereRequestInformation"
Description: "Information vedr. henvendelses, der er baggrunden for at igangsætte indsats i kommunen. Eksempel på, når der ikke er en MedCom besked der igangsætter indsatsen"
Usage: #example
* status = http://hl7.org/fhir/request-status#active
* intent = http://hl7.org/fhir/request-status#plan
* code.coding = $KLCommonCodes#a71921ea-fe83-441d-933b-cc21d0b3c8c3
* subject = Reference(BrunoTestElmer)
* authoredOn = 2019-04-17