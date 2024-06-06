Profile: KLGateway119Organization
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-organization
Id: klgateway-119-organization
Title: "KLGateway119Organization"
Description: "Organization as expressed in KLGateway for prevention/health promotion."
* identifier 1..1
* identifier[EAN-ID] 0..0
* identifier[KOMBIT-ORG-ID] 0..1
  * ^short = "[DK] FK-ORG-id"
* identifier[SOR-ID] 0..1
  * ^short = "[DK] SOR-id"
* identifier[Ydernummer] 0..0
* identifier[CVR-ID] 0..0
* identifier[Kommunekode] 0..0
* identifier[Regionskode] 0..0
* active 0..1
* type 0..0
* alias 0..0
* telecom 0..0
* address 0..0
* partOf 0..0
* endpoint 0..0
* contact 0..0

* identifier ^short = "[DK] organisationsid"
* active ^short = "[DK] harAktivJournal"

Instance: AfsenderAfBrunosHenvisning
InstanceOf: klgateway-119-organization
Title: "AfsenderAfBrunosHenvisning"
Description: "Kardiologisk afdeling Holbæk sygehus, der er afsender af Brunos Henvisning"
Usage: #example
* identifier.use = #official
* identifier.value = "391951000016006"
* identifier.system = "urn:oid:1.2.208.176.1.1"

Instance: UdfoererAfBrunosForebyggelse
InstanceOf: klgateway-119-organization
Title: "UdførerAfBrunosIndsats"
Description: "Sundhedsfremme og forebyggelse Holbæk kommune, der er udfører af Brunos indsats"
Usage: #example
* identifier.use = #official
* identifier.value = "1037791000016002"
* identifier.system = "urn:oid:1.2.208.176.1.1"
