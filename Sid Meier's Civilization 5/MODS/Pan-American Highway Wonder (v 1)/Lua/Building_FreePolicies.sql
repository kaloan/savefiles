CREATE TABLE IF NOT EXISTS
Building_FreePolicies (
    BuildingType                                text    REFERENCES Buildings(Type)              default null,
  	PolicyType                                	text	REFERENCES Policies(Type)              	default null);