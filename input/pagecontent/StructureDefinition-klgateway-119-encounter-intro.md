### Scope and usage
klgateway-119-encounter is used whenever a citizen meets the prevention/health promotion staff in a Danish municipality context.

In the context of the prevention/health promotion reporting, all Encounter.status values may be used, but not all are mandatory. The mandatory part is:
* To report all carried out encounters. For encounters carried out, use Encounter.status 'finished'.
* To report errors using status 'entered-in-error'

Encounter.class is mandatory in FHIR. In Danish municipalities, the values are used as follows:
* Visits in citizens homes have the code 'HH' home health, the code is also used for services that are not strictly health related e.g. help with cleaning. This code is also used, even if the activities stretch outside the citizens residence e.g. a physiotherapist that want to see a citizen walk outside, or a social worker helping with shopping activities.
* Sessions where the citizens visit municipality facilities e.g. for training og cooking class have the code "AMB" ambulatory.
* For telehealth/telecare encounters, where the patient is contacted by telephone, by teleconference or e-mail, the code is 'VR' virtual.

Encounters can also be related to the CarePlan or PlannedIntervention on which they are a delivery. Use Encounter.extension[basedOnCarePlan].

The time of the encounter is documented in Encounter.period.start and Encounter.periode.end, and both attributes are mandatory. Only planned time is mandatory to report. There is no expectation that the staff update the time if they finish a little earlier or a little later.

Encounter.subject relates to the citizen that the encounter is about.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|borgerkontaktstatus|Klasse der indikerer om kontakten er igangværende, eller om dokumentationen repræsentere en fremtidig intention eller er historisk|Encounter.status|
|borgerkontaktklasse|Klasse, der udtrykker en generel kategori for kontakten, som rækker ud over den kommunale kontekst.|Encounter.class|
|borgerkontaktstart|Kontaktens start, eller planlagte start|Encounter.period.start|
|borgerkontaktslut|Kontaktens sluttidspunkt, eller planlagte sluttidspunkt|Encounter.period.end|
|borgerkontaktsubjekt|Den borger kontakten vedrører|Encounter.subject|
|borgerkontaktBaseretPå|Det indsatsforløb eller indsats, der er grunden til at denne kontakt udføres|Encounter.extension:basedOnCarePlan|