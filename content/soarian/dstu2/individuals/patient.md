---
title: Patient | Soarian DSTU 2 API
---
 
# Patient

* TOC
{:toc}

## Overview

For the Patient resource query, the API returns a set of data stored for the patient as a result of Soarian admission, discharge, transfer (ADT) conversations.  The response represents the most current information about the patient charted in Soarian at the time of query.

The following fields are returned if valued:

* [Identifier]
* [Patient name]
* [Gender]
* [Date of Birth]
* [Address]
* [Language]
* One or more patient races and ethnicities will be returned as extensions, see [Extensions]

## Terminology Bindings

<%= terminology_table(:soarian_patient, :dstu2) %>

## Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

The following extensions can also be returned:

* [US Core Race]
* [US Core Ethnicity]

## Search      

	GET /Patient?:parameters
	
_Implementation Notes_

* The API returns the most current patient list.
* The value for gender in the patient resource may or may not represent the value of sex explicitly recorded at birth.  ONC has clarified that birth sex is the CCDS (common clinical data set) value.  This information, if charted and configured is returned as part of the Observation resource.

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`] | The patient identifier provided in a pre-requisite authorization step.

### Headers 

<%= headers %>

### Example

#### Request

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/Patient?patientId=393EC770-CFC9-4F5A-8B3A-784F2508F245

#### Response
  
<%= headers status: 200 %>
<%= json(:SOARIAN_PATIENT_ENTRY) %>

### Errors and Informational messages

The common [errors and informational messages] can be returned.

These additional informational messages may be returned within the [bundle extension]:

 Code    | Message
---------|---------------------------------------------------------------------------------------------------------------------
 papi003 | This is the most current, known Patient data and may not reflect the state of information known at a previous date.
 papi004 | No patient information is available.

[US Core Race]: https://hl7.org/fhir/dstu2/extension-us-core-race.html
[US Core Ethnicity]: https://hl7.org/fhir/dstu2/extension-us-core-ethnicity.html
[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[Identifier]: https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.identifier
[Patient name]: https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.name
[Gender]: https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.gender
[Date of birth]: https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.birthDate
[Address]: https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.address
[Language]: https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.language
[Extensions]: ./#extensions
[errors and informational messages]: ../../common-errors
