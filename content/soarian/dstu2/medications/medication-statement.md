---
title: MedicationStatement | Soarian DSTU 2 API
---
 
# MedicationStatement

* TOC
{:toc}

## Overview

For the MedicationStatement resource query, the API returns a consolidated list of medications that the provider has defined for the patient.  The list represents the most current discharge medication reconciliation (DMR) list the provider has charted in Soarian.

As the most current medication list, if a patient was taking a medication prior to admission or was given a medication during his stay, but in the discharge process the physician determined these medications no longer apply, it will be marked stopped.  Soarian clients can configure a preference to only show active medications or to also show stopped medications.  

To avoid patient confusion about the definitive active medication list, no in-progress medications during an active visit are returned; these medications are managed by providers.  If there is an active visit without a DMR, we will return an Informational Message indicating that Medication reconciliation has not been performed.

## Terminology Bindings

<%= terminology_table(:soarian_medication_statement, :dstu2) %>

## Custom Extensions
The [bundle extension] can be returned, see possible codes in the [errors section] below.

  Status Extension:

The URL for this status extension is defined as `Additional status`

ID                                | Value\[x] Type      | Description
----------------------------------|---------------------|----------------------------------------------------------------------------------
`MedicationStatement/Staus`          | [`string`]       | This element describes the additional status information of the MedicationStatement. Possible values are 'New', 'Continued' and 'Modified' |

 Example:
 
<%= json(:SOARIAN_MEDICATIONSTATEMENT_STATUS_EXTENSION) %>

## Search 

GET /MedicationStatement?:parameters

_Implementation Notes_

* The API returns qualifying results dated within the implicit or explicitly defined date query parameter.  For response time, response may be limited to 1000 records.  For any non-null response, the API will provide the informational message including the record dates included in the response.  This informational message may be augmented with further detail if noted below.    
* The Narrative includes additional information pertaining to the MedicationStatement, and should be shown to the user to ensure completeness of clinical content and context.

### Parameters

No MedicationStatement resource specific search parameters are supported. To ensure an unambiguous patient-facing active medication list, the current list is always returned; date date/range parameters are not used for this resource.  

|Name |Required? | Type | Description
| --- | --- | --- | --- |
| patientId | Y | [reference](http://hl7.org/fhir/DSTU2/search.html#reference) | The patient identifier provided in a pre-requisite authorization step. |

### Headers

<%= headers %>    

### Example

#### Request

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc//MedicationStatement?patientId=393EC770-CFC9-4F5A-8B3A-784F2508F245

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_MEDICATION_STATEMENT_BUNDLE) %>

### Errors and Informational messages

The common [errors and informational messages](../../common-errors) can be returned.

These additional informational messages may be returned within the [bundle extension]:

| Code | Message |
| --- | --- |
| PAPI023 | No relevant clinical data exists.|
| PAPI024 |Medication reconciliation has not been performed.|


[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`string`]: http://hl7.org/fhir/dstu2/datatypes.html#string