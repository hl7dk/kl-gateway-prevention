### Scope and usage
The organization inherits its basic structure from dk-core. When it is used in KL gateway, identifiers are reported. The identifier can be either a SOR-id or an FK-org code.

Organization.active is optional and assumed true, if not given. Organization.active = false is used to report  entered-in-error. However, this option should only be used, if the Organization is fully unknown to the municipality system, and should never have been in the system at all.

Be aware that in the context of KL gateway, the managing organization (the municipality keeping the record) is represented in the [citizen profile]( StructureDefinition-klgateway-119-citizen.html), NOT using this organization profile. The organization profile is used to represent other organizations such as general practitioners and hospitals sending service requests.

### Conversions between Danish information model and FHIR-profile
Organization svarer til en type af Aktør i den fælleskommunale rammearkitektur.
nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|organisationsid|Id på organisationen der enten er en SOR kode eller et FK-Org id|Organization.identifier|
|organisationHarAktivJournal|Angiver om organisationen har en aktiv journal i den journalførende organisation eller ej|Organization.active|