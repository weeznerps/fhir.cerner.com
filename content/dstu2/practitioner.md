---
title: Practitioner | DSTU 2 API
---

# Practitioner

* TOC
{:toc}

## Overview

A Practitioner is someone who is directly or indirectly involved in the provisioning of healthcare. Practitioner covers all individuals who are engaged in the healthcare-related services as part of their formal responsibilities and this Resource is used for attribution of activities and responsibilities to these individuals.

## Terminology Bindings

<%= terminology_table(:practitioner, :dstu2) %>

## Search

Search for Practitioners that meet supplied query parameters:

    GET /Practitioner?:parameters

_Implementation Notes_

* Add any search implementation notes here.

### Parameters

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
 `_id`        | Yes                                   | [`token`]     | The logical resource id associated with the resource.

### Headers

To successfully GET a Practitioner, the following headers must be provided. Authorization must be provided if accessing the closed endpoint.

        Accept-Type: application/json+fhir
        Authorization: <OAuth2 Bearer Token>

### Example

#### Request

    GET [...]/Practitioner?_id=18310978

#### Response
<%= headers 200 %>
<%= json(:dstu2_practitioner_bundle) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors atleast.)

## Retrieve by id

List an individual Practitioner by its id:

    GET /ResourceExample/:id

### Headers

To successfully GET a Practitioner, the following headers must be provided. Authorization must be provided if accessing the closed endpoint.

        Accept-Type: application/json+fhir
        Authorization: <OAuth2 Bearer Token>

### Example

#### Request

    GET [...]/Practitioner/18310978

#### Response

<%= headers 200 %>
<%= json(:dstu2_practitioner_entry) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors atleast.)
