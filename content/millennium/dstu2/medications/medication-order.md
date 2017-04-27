---
title: MedicationOrder | DSTU 2 API
---

# MedicationOrder

* TOC
{:toc}

## Overview

## Terminology Bindings

<%= terminology_table(:medication_order, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:contained_medication, :dstu2) %>

## Extensions

* [Patient friendly display]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

ID                              | Value\[x] Type      | Description
--------------------------------|---------------------|----------------------------------------------------------------------------------
`patient-friendly-display`      | [`string`]          | The display that can be used for this field when producing a view suitable for a patient. 


## Search

Search for MedicationOrders that meet supplied query parameters:

    GET /MedicationOrder?:parameters
    
_Implementation Notes_

* MedicationOrder may have a reference to a [contained] Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients.  Medications in the system always exist within the context of a MedicationOrder and cannot be be referenced independently.

### Authorization Types

<%= authorization_types(practitioner: true, system: true)%>

### Parameters

 Name                      | Required? | Type          | Description
---------------------------|-----------|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `patient`                 | Y         | [`reference`] | The identity of a patient to list orders for. Example: `12345`
 `status`                  | N         | [`token`]     | The status of the medication order, may be a list separated by commas. Example: `active,draft`
 `-timing-boundsPeriod`    | N         | [`date`]      | The date-time which should fall within the [period] the medication should be given to the patient. Must be prefixed by 'ge'. Example: `ge2014-05-19T20:54:02.000Z`
 [`_count`]                | N         | [`number`]    | The maximum number of results to include in a page. Example: `50`

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationOrder?patient=4342010 

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_order_bundle) %>

### Errors

The common [errors] may be returned.

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`token`]: http://hl7.org/fhir/dstu2/search.html#token
[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[period]: http://hl7.org/fhir/DSTU2/MedicationOrder-definitions.html#MedicationOrder.dosageInstruction.timing
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[contained]: http://hl7.org/fhir/DSTU2/references.html#contained
[Patient friendly display]: #custom-extensions
[`string`]: http://hl7.org/fhir/DSTU2/datatypes.html#string
[errors]: ../../#client-errors
