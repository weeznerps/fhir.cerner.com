---
title: AllergyIntolerance | Soarian DSTU 2 API
---
 
# AllergyIntolerance  

* TOC
{:toc}

## Overview

For the AllergyIntolerance resource query, the API returns the current state of the patient's allergy list as charted in Soarian.   The allergy list represents a clinical assessment of a patient's allergy or intolerance when exposed to a specific substance or class of substance.  

Soarian's list supports medication, food, environmental, and other allergen categories.  Allergy and Intolerance are not differentiated.  Charted assertions of no allergy is different than an empty list; the response will include any charted assertions such as NKA (no known allergies), NKDA (no known drug allergy), NKFA (no known food allergy), No Latex Allergy, and/or No IV contrast Allergy.  A consolidated list of allergens, reactions, and severities that providers have charted in the Soarian Allergy List.  Only allergies in the active state are returned.


## Terminology Bindings

<%= terminology_table(:soarian_allergy_intolerance, :dstu2) %> 

## Custom Extensions
The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search 

	GET /AllergyIntolerance?:parameters

_Implementation Notes_

* The API returns the most current AllergyIntolerance list.
* The Narrative includes additional information pertaining to the AllergyIntolerance and should be shown to the user to ensure completeness of clinical content and context.

### Parameters
     
No AllergyIntolerance resource specific search parameters are supported. For an unambiguous patient-facing allergy list, the current allergy list is always returned; date date/range parameters are not used for this resource.

|Name |Required? | Type | Description
| --- | --- | --- | --- |
| patientId | Y | [reference](http://hl7.org/fhir/DSTU2/search.html#reference) | The patient identifier provided in a pre-requisite authorization step. |

### Headers

<%= headers %>

### Example

#### Request

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc//AllergyIntolerance?patientId=52930295-B52D-4685-B922-DC5F181CF786
	
#### Response
 
<%= headers status: 200 %>
<%= json(:SOARIAN_ALLERGY_INTOLERANCE_BUNDLE) %>
  
### Errors and Informational messages

The common [errors and informational messages](../../common-errors) can be returned.

These additional informational messages may be returned within the [bundle extension]:
 
| Code | Message |
| --- | --- |
| PAPI001 | This is the most current, known allergy list and may not reflect the state of allergies known at a previous date.|
| PAPI002 | No allergy information is available.|

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
