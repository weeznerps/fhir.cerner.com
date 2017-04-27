---
title: Patient | Soarian DSTU 2 API
---
 
# Patient

* TOC
{:toc}

## Overview

For the Patient resource query, the API returns a set of data stored for the patient as a result of Soarian admission, discharge, transfer (ADT) conversations.  The response represents the most current information about the patient charted in Soarian at the time of query.  

## Terminology Bindings

<%= terminology_table(:soarian_patient, :dstu2) %>

## Custom Extensions
The [bundle extension] can be returned, see possible codes in the [errors section] below.

  Race Extension:

 The URL for this custom extension is defined as  `http://hl7.org/fhir/StructureDefinition/us-core-race`

ID                                | Value\[x] Type      | Description
----------------------------------|---------------------|----------------------------------------------------------------------------------
`Race`| [`CodeableConcept`]  | Note that CCDS specification indicates Race and Ehnicity are part of the CCDS but these are not part of the FHIR patient resource so I’ve added them as FHIR extensions.|
 
 Example:
 
<%= json(:SOARIAN_RACE_STATUS_EXTENSION) %>

  Ehnicity Extension:

 The URL for this custom extension is defined as  `http://hl7.org/fhir/StructureDefinition/us-core-ethnicity`

ID                                | Value\[x] Type      | Description
----------------------------------|---------------------|----------------------------------------------------------------------------------
`Ethnicity`| [`CodeableConcept`]  | Note that CCDS specification indicates Race and Ehnicity are part of the CCDS but these are not part of the FHIR patient resource so I’ve added them as FHIR extensions.|
 
  Example:
 
<%= json(:SOARIAN_ETHNICITY_STATUS_EXTENSION) %>


## Search      

	GET /Patient?:parameters
	
_Implementation Notes_

* The API returns the most current patient list.

### Parameters

No Patient resource specific search parameters are supported. To ensure an unambiguous patient-facing response, the most current information is always returned; date date/range parameters are not used for this resource.

### Headers 

<%= headers %>

### Example

#### Request

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc//Patient?patientId=393EC770-CFC9-4F5A-8B3A-784F2508F245

#### Response

The API returns the most current information about the patient including:

| Name | Description | 
| --- | --- |
|[identifier](https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.identifier) | Business identifier stored with the patient, represents MPI or MRN |
|[patient name](https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.name) | First Name, Middle Name, Last Name Suffix such as John James Jackson Jr. Middle Name may be unknown |
| [Gender](https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.gender) | Patient sex as recorded during ADT transactions*|  
| [birthDate](https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.birthDate) | Patient's date of birth |
|[address](https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.address)| Home address if valued |
|[language](https://www.hl7.org/fhir/DSTU2/patient-definitions.html#Patient.address) | Patient's preferred language if valued|

One or more patient races and ethnicities will be returned as extensions, see extension section.

* Note that the value for gender in the patient resource may or may not represent the value of sex explicitly recorded at birth.  ONC has clarified that birth sex is the CCDS (common clinical data set) value.  This information, if charted and configured is returned as part of the Observation resource.
  
<%= headers status: 200 %>
<%= json(:SOARIAN_PATIENT_ENTRY) %>

### Errors and Informational messages

The common [errors and informational messages](../../common-errors) can be returned.

These additional informational messages may be returned within the [bundle extension]:

| Code | Message |
| --- | --- |
| PAPI003 | This is the most current, known Patient data and may not reflect the state of information known at a previous date.|
| PAPI004 | No patient information is available.|

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`CodeableConcept`]: https://www.hl7.org/fhir/datatypes.html#CodeableConcept 
