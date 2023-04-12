## Scope and usage
This model is used to represent the reporting of prevention/health promotion deliverd by the municipalities according to §140 in the health act.

The report is a FHIR Bundle that allows different ressources to be grouped and handled as a unit. The ressources that are grouped in this bundle is one, and only one klgateway-119-citizen, together with the content that have changed since the last reporting. The content can be of all the types that are present as profiles in this implementation guide.

One and only one citizen is included in the report in Bundle.entry[citizen]. The citizen resssource should be included in the bundle, together with its url. 

The content is included in the report in all other entries. Each of these entries also includes a ressource and its url.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|indberetningsrapportBorger|Indberetningsrapportens borger|Bundle.entry[citizen]|
|indberetningsrappprtIndhold|Hver af indberetningsrapportens indholds-ressourcer|entry[content]|