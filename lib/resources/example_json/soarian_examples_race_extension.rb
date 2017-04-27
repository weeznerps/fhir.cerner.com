module Cerner
  module Resources
    SOARIAN_RACE_STATUS_EXTENSION ||= {
			
                    "extension": {
                        "url": "http://hl7.org/fhir/StructureDefinition/us-core-race",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/v3/vs/Race",
                                    "code": "2054-5",
                                    "display": "Black or African American"
                                }
                            ],
                            "text": "Black or African American"
                        }
                    }

        }	
		
  end
end


