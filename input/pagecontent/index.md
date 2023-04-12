# KLGatewayPrevention
This implementation guide describes the delivery of §119 prevention/health promotion data to KL Gateway. The data originates from the documantation made by health center employees in the Danish municipalities.The reporting aims for compliance with the Danish core profiles and the current work on a shared information model (FKI) for data in the Danish municipalities.  

The profiles for the reporting are restricted to allow only the information that is required to report to the KL Gateway.

## Overview
The data is reported as a collection of instances. A report may contain instances that conforms to the profiles defined in this implementation guide. See figure below.

<img alt="OverviewModel" src="./ReportStructure.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Whereas the report may seem unconstrained, each profile define constraints on attributes, datatypes and cardinalities. See descriptions below.

## Citizen
Information about the citizen that is the subjects of the report.

##### Attributes
* A civil registration number (CPR-nr)
* An organisation identifier that identifies the municipality holding and reporting the data

##### Validation
* One and only one civil registration number exists, and is a syntactically valid CPR-nr
* One and only one managing organization exitis, and is a syntactically valid SOR code (only code length is currently validated in the profile, but the authorization validates the actual SOR code)

## Organization
The organization profile is used to represent organizations such as general practitioners and hospitals sending service requests. Be aware that the managing organization (the municipality keeping the record) is represented in the citizen profile.

##### Attributes
* An organisation identifier

##### Validation
* One and only one organisation identifier exists, and is a syntactically valid SOR code or FK-org code

## ServiceRequest
This model is used to represent when a municipality recieves a referal or request for prevention/health promotion according to §119 in the health act.

##### Attributes
* A reference to the organization that requests the intervention
* The intervention being requested
* The reason for the referal expressed as a reference to FocusCondition
* A reference to the citizen
* The time of the referal/request
* A reference to the referal/request that this one replaces
* Two FHIR status attributes (status and intent)

##### Validation
* A reference to the organization may exist. It is not required for requests recieved by phone, only when the organization code may be drawn directly from a MedCom message.
* The code for the intervention being requested should always be present and fixed to 'Sundhedsfremme og forebyggelse'
* One or more references to FocusCondition may be present. It is only nessesary to report these, if they can be drawn directly from the MedCom message.
* One and only one reference to the citizen may be present.
* The time of the referal/request is mandatory
* A reference to a replaced referal/request may be present.
* Both FHIR statuses are mandatory. Each of them should be drawn from the appropriate standard FHIR-ValueSet 

## FocusCondition
This model holds a diagnosiscode, as it is reported to the municipality as part of the request for prevention/health promotion from a hospital or general practitioner.

##### Attributes
* A diagnosis code
* A reference to the citizen
* A FHIR status attribute

##### Validation
* One and only one diagnosis code exists and should be drawn from SKS or ICPC2
* One and only one reference to the citizen exists
* The FHIR status is mandatory and should be drawn from the appropriate standard FHIR-ValueSet 

## PlannedIntervention
This model holds information about prevention/health promotion interventions planned for a citizen.

##### Attributes
* A FSIII intervention code
* The time where the intervention was granted
* The time where the intervention was stopped
* A reference to the Citizen
* A reference to the ServiceRequest, that started the intervention
* The reason for the intervention expressed as a reference to Condition
* References to the encounters associated with this intervention
* An explaination for cancelling the intervention before its completion
* A timing consisting of a count, duration and durationUnit to express the time granted to the intervention e.g. "8 times with a duration of 60min"
* A reference to the organization that delivers the intervention
* Three FHIR status attributes (status, intent, activity.detail.status)

##### Validation
* One and only one FSIII intervention code may be present and it should be drawn from valid §119 FSIII interventions as expressed by the ValueSet.
* One and only one time for when the intervention was granted
* The time where the intervention was stopped may be present
* One and only one reference to the Citizen exists
* One and only one reference to the ServiceRequest exists
* A reference to one or more Conditions may exist, but are not required
* References to completed encounters may exist. They are added as the intervention progresses.
* One and only one explaination for cancelling the intervention before its completion shall exist if and oly if the status is 'cancelled' or 'stopped'. Else it is prohibited.
* The timing shall exist for interventions that may be repeating such as 'Madlavning i praksis på hold'. For non-repeating interventions such as 'Afklarende samtale', the timing is prohibited.
* One and only one reference to the organization that delivers the intervention exists
* All FHIR statuses are mandatory. Each of them should be drawn from the appropriate standard FHIR-ValueSet

## Encounter
Information about whenever a citizen meets the prevention/health promotion staff in a Danish municipality context.

##### Attributes
* A reference to the ServiceRequest
* Encounter class. The attriute holds a code which describe the place of delivery e.g. home visit or ambulatory.
* The encounter start-time
* The encounter end-time
* A reference to the Citizen
* A FHIR status attribute

##### Validation
* One and only one reference to the ServiceRequest exists
* One ond only one encounter class exists, and should be drawn from the standard FHIR-ValueSet
* One and only one encounter start-time exists
* One encounter end-time may exist
* One and only one reference to the Citizen exists
* One and only one FHIR status exists, and should be drawn from the standard FHIR-ValueSet

## Condition
This model contains information about FSIII conditions. They should be reported as long as a condition is true and active, for a living citizen that recieves §119 prevention/health promotion interventions in Danish municipalities.

##### Attributes
* A FSIII condition code
* The time where the condition was reported
* A reference to the Citizen
* A condition-focus attribute
* Two FHIR statuses (clinicalStatus and verificationStatus)

##### Validation
* One and only one FSIII condition code may be present and it should be drawn from valid §119 FSIII conditions as expressed by the ValueSet.
* One and only one reporting-time exists
* One and only one reference to the Citizen exists
* The condition-focus attribute may be set to 'problem-list-item', or not be present. See the detailed documentation.
* clinicalStatus is mandatory. VerificationStatus is recommended but only required for when reporting 'entered-in-error'. Each of them should be drawn from the appropriate standard FHIR-ValueSet
