---
title: ResourceExample | DSTU 2 API
---

# ResourceExample

* TOC
{:toc}

## Overview

[//]: # (Overview is a required section. A brief description of the resource)

## Terminology Bindings

[//]: # (Add the terminology table for the resource here. Terminology Bindings is a required field.)

<%= terminology_table(:resource_example, :dstu2) %>

### Contained Resource(if any, remove if not present.) Bindings

<%= terminology_table(:contained_resource_example, :dstu2) %>

### Contained Resource2(if any, remove if not present.) Bindings

<%= terminology_table(:contained_resource_example2, :dstu2) %>

## Extensions

[//]: # (Extensions is not required, but should be listed if present.)

* Link relevant extensions here.
* [Time of day of birth]

## Search

[//]: # (Required if the resource supports search.)

Search for ResourceExamples that meet supplied query parameters:

    GET /ResourceExample?:parameters

_Implementation Notes_

* Add any search implementation notes here.

### Parameters

[//]: # (Required section. A table for the supported search parameters)

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
 `param1`     | Is param1 required?                   | param1's type | The description of param1 and an example. 2 examples of params are given below.
 `subject`    | This, or `param1`                     | [`reference`] | The subject of the Resource. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316020` or `subject:Patient=1316020`
 `date`       | N                                     | [`date`]      | The date/time when the Resource was performed. Must use the `ge` and/or `le` prefixes. Example: `date=le2017-02-01T10:30:00Z`

Notes:

  - Add any notes about the search parameters here. The description should be short

### Headers

[//]: # (Required. Add all the required headers for the request.)

To successfully GET a ResourceExample, the following headers must be provided. Authorization must be provided if accessing the closed endpoint.

        Accept-Type: application/json+fhir
        Authorization: <OAuth2 Bearer Token>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    GET add example request here.

#### Response
<%= headers 200 %>
<%= json(:dstu2_resource_example_bundle) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors atleast.)

## Retrieve by id

[//]: # (Required if the resource supports retrieve by id.)

List an individual ResourceExample by its id:

    GET /ResourceExample/:id

_Implementation Notes_

* Add any retrieve by id implementation notes here.

### Headers

[//]: # (Required. Add all the required headers for the request.)

To successfully GET a ResourceExample, the following headers must be provided. Authorization must be provided if accessing the closed endpoint.

        Accept-Type: application/json+fhir
        Authorization: <OAuth2 Bearer Token>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    GET add example request here.

#### Response

<%= headers 200 %>
<%= json(:dstu2_recource_example_entry) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors atleast.)

## Create

[//]: # (Required if the resource supports create.)

Create a new ResourceExample.

    POST /ResourceExample

_Implementation Notes_

* Add any create implementation notes here.

### Headers

[//]: # (Required. Add all the required headers for the request.)

To successfully POST a ResourceExample, the following headers must be provided. ResourceExample creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

### Body Fields

<%= definition_table(:resource_example, :create, :dstu2) %>

#### Contained Resource(if any) Body Fields

<%= definition_table(:contained_resource_example, :create, :dstu2) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    POST add example request here.

#### Body

<%= json(:dstu2_resource_example_create) %>

#### Response

<%= headers 201 %>
<pre class="terminal">
    #TODO: Replace with headers from successful create to your resource.
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:45:47 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 201 Created
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"0"
    location → 'url to created resource example'
    server-response-time → 1260.984596
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 682c633c-b20f-4f6f-8fae-c58b3aeffe04
    x-runtime → 1.260940
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

[//]: # (Errors is a required field. Must point to the common errors atleast.)

## Update

[//]: # (Required if the resource supports update.)

Update a ResourceExample.

    PUT /ResourceExample

_Implementation Notes_

* Add any update implementation notes here.

### Headers

[//]: # (Required. Add all the required headers for the request.)

To successfully PUT a ResourceExample, the following headers must be provided. ResourceExample updates are supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>
    If-Match: W/"<Current version of the ResourceExample resource>"

### Body fields

<%= definition_table(:resource_example, :update, :dstu2) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    PUT add example request here.

#### Body

<%= json(:dstu2_resource_example_update) %>

### Response

<%= headers 200 %>
<pre class="terminal">
    #TODO: Replace with headers from a successful update to a ResourceExample
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:50:53 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 200 OK
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"1"
    server-response-time → 653.7616069999999
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 9dba8326-899a-406f-a125-3fc3d6605dad
    x-runtime → 0.653722
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

[//]: # (Errors is a required field. Must point to the common errors atleast.)


[//]: # (Add your links here)

[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
