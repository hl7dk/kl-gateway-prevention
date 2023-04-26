CodeSystem: Tempcodes
Id: Tempcodes
Title: "Tempcodes"
Description: "Tempcodes to be implemented in KL-term"
//* #7273c0b7-1a0d-4c4a-a202-c014b1ddd4a0 "Første kontakt i forløb"
* ^experimental = false
* ^caseSensitive = true
* #4bbf6d6a-a1c6-41c2-b8c1-7352b7378adf "Ikke yderligere behov (borger-vurderet)""Borger vurderer, at han/hun ikke har yderligere behov og afslutter derfor før tid"
* #a63b6aa6-7d56-4e67-a5b3-d73f6d262af5 "Ikke yderligere behov (fagperson-vurderet)" "Fagperson vurderer, at borger ikke har yderligere behov og afslutter derfor før tid"
* #3a5a72b7-addf-4857-b80c-04e4246e3072 "Aktivt fravalg" "Borger har behov, men har foretaget et aktivt fravalg"
* #3a5a72b7-addf-4857-b80c-04e4246e3072 #0cd5734d-b663-47c6-a3da-6b14a937d144 "Aktivt fravalg pga. anden sygdom" "Borger har behov, men har foretaget et aktivt fravalg pga. anden sygdom"
* #3a5a72b7-addf-4857-b80c-04e4246e3072 #f8436c2e-af1c-44fe-939d-473b518dd01d "Aktivt fravalg pga. økonomi ifm. transport" "Borger har behov, men har foretaget et aktivt fravalg pga. den omkostning der er forbundet med transport til det sted indsatsen tilbydes"
* #3a5a72b7-addf-4857-b80c-04e4246e3072 #8371b769-4bfb-4ac8-b130-d91c54784a56 "Aktivt fravalg pga. logistik ifm. transport" "Borger har behov, men har foretaget et aktivt fravalg pga. den logistiske udfordring det er mht. transport, at nå frem til det sted indsatsen tilbydes"
* #3a5a72b7-addf-4857-b80c-04e4246e3072 #a3f2bd01-078b-486e-81be-797d192ad7bd "Aktivt fravalg pga. anden træning" "Borger har behov, men har foretaget et aktivt fravalg fordi han/hun er påbegyndt træning i andet regi fx fitnesscenter"
* #82e99421-31da-4915-96ed-168ccfa1d20c "Hændelse medfører ophør" "En hændelse i borger liv medfører at indsatsen nødvendigvis må ophøre. En hændelse kan fx være flytning til en anden kommune, en hospitalsindlæggelse eller en helbredsmæssig forværring der efter faglig vurdering gør gentræningen umulig"
* #e78c43e3-c512-44b4-ad30-2de43481d9b3 "Vejledning og introduktion til fysiske aktiviteter på hold"
* #f490d484-fa43-400b-b678-e718c6927708 "Vejledning og introduktion til fysiske aktiviteter individuelt"
* #abade2c3-0922-4ec1-b85a-263c85d056fa "Fysisk træning på hold"
* #122fe9a2-9bff-4c9c-87df-af1e096ad7a6 "Fysisk træning individuelt"
* #9143b4b7-7211-45ed-8892-9afb1f2d20b7 "Færdighedstræning på hold"
* #e31355bd-b1a6-4fab-a339-8cec309cad81 "Færdighedstræning individuelt"
* #fea40bf1-731f-4d7e-a1d0-38555a553cb7 "Kostvejledning på hold"
* #37d2b78b-4988-4225-afa0-a9642402df38 "Kostvejledning individuelt"
* #eac36593-ad34-4abe-9de0-c408fe7eb3e5 "Madlavning i praksis på hold"
* #051978fc-599e-4e30-9746-d6d0547a0361 "Madlavning i praksis individuelt"
* #fe0588d3-d12b-455f-b84c-1fee3c85bfd8 "Tobaksafvænning på hold"
* #d83d524f-a01b-4fa0-9324-3bb56c1e79fe "Tobaksafvænning individuelt"
* #a616e57f-c780-442e-8c29-b22a72fbe88c "Sygdomshåndtering på hold"
* #a05f0199-6b1f-419f-800c-f6348f93751e "Sygdomshåndtering individuelt"
* #1b325914-3a06-437d-9f7e-cd0edbbda32e "Mental håndtering på hold"
* #30836f9d-c84a-4e48-8d5c-21862747466a "Mental håndtering individuelt"
* #6d339989-6788-468a-8020-5e44e6d0b2aa "Opfølgning på hold"
* #4339307c-01ea-4119-9520-4b88e0a65e04 "Opfølgning individuelt"

//* #2865f123-15a7-4a36-a514-32ea37c400ca "gruppebaseret indsats"
//* #8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "individuel indsats"


ValueSet: CancellationTypes
Id: CancellationTypes
Title: "CancellationTypes"
Description: "Cancellation valueset, to be implemented in KL-term and FKI"
* ^experimental = false
* Tempcodes#4bbf6d6a-a1c6-41c2-b8c1-7352b7378adf //"Ikke yderligere behov (borger-vurderet)"
* Tempcodes#a63b6aa6-7d56-4e67-a5b3-d73f6d262af5 //"Ikke yderligere behov (fagperson-vurderet)"
* Tempcodes#3a5a72b7-addf-4857-b80c-04e4246e3072 //"Aktivt fravalg"
* Tempcodes#0cd5734d-b663-47c6-a3da-6b14a937d144 //"Aktivt fravalg pga. anden sygdom"
* Tempcodes#f8436c2e-af1c-44fe-939d-473b518dd01d //"Aktivt fravalg pga. økonomi ifm. transport"
* Tempcodes#8371b769-4bfb-4ac8-b130-d91c54784a56 //"Aktivt fravalg pga. logistik ifm. transport"
* Tempcodes#a3f2bd01-078b-486e-81be-797d192ad7bd //"Aktivt fravalg pga. anden træning"
* Tempcodes#82e99421-31da-4915-96ed-168ccfa1d20c //"Hændelse medfører ophør"

// ValueSet: ExtendedEncounterTypes
// Id: ExtendedEncounterTypes
// Title: "ExtendedEncounterTypes"
// Description: "Extension on encountertype valueset, to be implemented in KL-term and FKI"
// * ^experimental = false
// * include codes from valueset http://fhir.kl.dk/term/ValueSet/KLEncounterTypes
//* Tempcodes#7273c0b7-1a0d-4c4a-a202-c014b1ddd4a0

ValueSet: ServiceTypes119
Id: ServiceTypes119
Title: "ServiceTypes"
Description: "The service types allowed in §119" 
* ^experimental = false
* $KLCommonCodes#a71921ea-fe83-441d-933b-cc21d0b3c8c3 //Sundhedsfremme og forebyggelse

ValueSet: KLInterventionCodes119
Id: KLInterventionCodes119
Title: "KLInterventionCodes119"
* ^experimental = false
* $FSIII#cf7a55c2-7061-47ed-b7c5-e29620fe93bf //Diætbehandling
* $FSIII#924e9828-84cf-4689-9551-0ebb6dc71b98 //Samtale om alkohol
* $FSIII#6eddbaf7-2a73-49d4-91e7-6138d419f58c //Afklarende samtale
* $FSIII#ee5606ac-1bed-487e-aa3c-72dcc30ec037 //Behovssamtale
* $FSIII#03a3ebdb-9e2d-4be1-b32b-42f0bd2a3362 //Afsluttende samtale


ValueSet: KLInterventionCodes119temp
Id: KLInterventionCodes119temp
Title: "KLInterventionCodes119temp"
* ^experimental = false
* Tempcodes#e78c43e3-c512-44b4-ad30-2de43481d9b3 // "Vejledning og introduktion til fysiske aktiviteter på hold"
* Tempcodes#f490d484-fa43-400b-b678-e718c6927708 //"Vejledning og introduktion til fysiske aktiviteter individuelt"
* Tempcodes#abade2c3-0922-4ec1-b85a-263c85d056fa //"Fysisk træning på hold"
* Tempcodes#122fe9a2-9bff-4c9c-87df-af1e096ad7a6 //"Fysisk træning individuelt"
* Tempcodes#9143b4b7-7211-45ed-8892-9afb1f2d20b7 //"Færdighedstræning på hold"
* Tempcodes#e31355bd-b1a6-4fab-a339-8cec309cad81 //"Færdighedstræning individuelt"
* Tempcodes#fea40bf1-731f-4d7e-a1d0-38555a553cb7 //"Kostvejledning på hold"
* Tempcodes#37d2b78b-4988-4225-afa0-a9642402df38 //"Kostvejledning individuelt"
* Tempcodes#eac36593-ad34-4abe-9de0-c408fe7eb3e5 //"Madlavning i praksis på hold"
* Tempcodes#051978fc-599e-4e30-9746-d6d0547a0361 //"Madlavning i praksis individuelt"
* Tempcodes#fe0588d3-d12b-455f-b84c-1fee3c85bfd8 //"Tobaksafvænning på hold"
* Tempcodes#d83d524f-a01b-4fa0-9324-3bb56c1e79fe //"Tobaksafvænning individuelt"
* Tempcodes#a616e57f-c780-442e-8c29-b22a72fbe88c //"Sygdomshåndtering på hold"
* Tempcodes#a05f0199-6b1f-419f-800c-f6348f93751e //"Sygdomshåndtering individuelt"
* Tempcodes#1b325914-3a06-437d-9f7e-cd0edbbda32e //"Mental håndtering på hold"
* Tempcodes#30836f9d-c84a-4e48-8d5c-21862747466a //"Mental håndtering individuelt"
* Tempcodes#6d339989-6788-468a-8020-5e44e6d0b2aa //"Opfølgning på hold"
* Tempcodes#4339307c-01ea-4119-9520-4b88e0a65e04 //"Opfølgning individuelt"