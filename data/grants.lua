
function CreateGrants()
	
	CreateMassEmployment();
	
end

function CreateMassEmployment()

	Objective.CreateGrant                   ( "Grant_MassEmployment", 0, 2000 )
	
	Objective.CreateGrant			( "Grant_MyGrant_MyRequirement1", 0, 0 )
	Objective.SetParent			( "Grant_MyGrant" )
	Objective.RequireRoom			( "Staffroom", true )
	
	Objective.CreateGrant			( "Grant_MyGrant_MyRequirement2", 0, 0 )
	Objective.SetParent			( "Grant_MyGrant" )
	Objective.RequireObjects                ( "Policeman", 30 )
end


