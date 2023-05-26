### Scope and usage
This model is used to represent when a municipality recieves a referal or request for prevention/health promotion according to §119 in the health act.

The ServiceRequest, may have the sending organisation as the requester i.e the hospital or general practitioner that sends the request/referal. The requester is only required if the organisation or person that requests the service does so using a MedCom message, and the SOR-code can be drawn automatically from there. Requests recieved via phone e.g. from GP's, citizens or next-of-kin should be reported without requester.
 
Intent should always be "plan". The status attribute should be used according to the FHIR-guidance. The citizen is referred in ServiceRequest.subject.

ServiceRequest.authoredOn holds the time, where the request was recieved in the municipality, if this is available. Else, the time that the request was send from the hosptal may be used. The date may be repported with or without time of day.

ServiceRequest.status and ServiceRequest.intent are mandatory. ServiceRequest.intent always have the value 'plan'. ServiceRequest.status uses the required FHIR ValueSet as appropriate.

It may happen that a new request is recieved, while another one is already active for the citizen. In this case, choose the appropriate use case:
* If the new request calls for the same interventions (with just minor modifications). Then the new request replaces the old one. This is documented by reporting both the old and the new ServiceRequest. The new serviceRequest referes the old one using the attribute serviceRequest.replaces. The old ServiceRequest sets ServiceRequest.status to 'revoked'.
* It could also happen that the new request means that the citizen interventions should be modified. E.g. the therapist start over with the clarification (afklarende samtale) and/or plan another intervention. In this case, revoke the old ServiceRequest, and use the new one as a reference in all interventions and encounters.
* In the last case, both requests are relevant at the same time, and each calls for different interventions. In this case, both ServiceRequests remains active, and each have different interventions and encounters associated with it.

SeviceRequest.reasonReference is only used if a code or codes were recieved in a MedCom message as a diagnosis. The reasonReference describes this through a reference to FocusCondition, which again uses SKS or ICPC2 diagnosis codes to describe the problem/diagnosis, that led the hospital or General practitioner to request §119 prevention/health promotion. 

ServiceRequest.code.coding is used to state, what kind of interventions the requester wants for the citizen. The value is always 'Sundhedsfremme og forebyggelse'.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|anledningAnsvarlig|Den som har ansvar for henvendelsen/henvisningen|ServiceRequest.requester|
|anledningsstatus|Klasse der udtrykker status for henvendelsen|ServiceRequest.status|
|anledningsHensigt|Klasse der udtrykker hensigten med henvendelsen|ServiceRequest.intent|
|anledningsIndsats|Klasse der udtrykker, hvilken type kommunal indsats/ydelse der anmodes om.|ServiceRequest.code.coding|
|anledningsSubjekt|Den borger som henvisningen/henvendelsen vedrører|ServiceRequest.subject|
|anledningstid|Det tidspunkt hvor henvisning/henvendelsen er forfattet af den ansvarlige|ServiceRequest.authoredOn|
|anledningsbegrundelse|Den borgertilstand, der ligger til grund for henvendelsen/henvisningen.|SeviceRequest.reasonReference|
|anledningErstatter|Den tidligere anledning som denne erstatter|SeviceRequest.replaces|