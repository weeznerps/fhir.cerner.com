module Cerner
  module Resources
    SOARIAN_ETHNICITY_STATUS_EXTENSION ||= {
					 "Extension":{
                        "url": "http://hl7.org/fhir/StructureDefinition/us-core-ethnicity",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/v3/vs/Ethnicity",
                                    "code": "2135-2",
                                    "display": "Hispanic or Latino"
                                }
                            ],
                            "text": "Hispanic or Latino"
                        }
                    }
			  }  
	end
end


