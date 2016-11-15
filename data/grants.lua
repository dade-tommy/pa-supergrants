
function CreateGrants()
	
	CreateMassEmployment();
	
end

function CreateMassEmployment()

	Objective.CreateGrant                   ( "Grant_MassEmployment", 0, 2000 )
	
	Objective.CreateGrant			( "Grant_MassEmployment_MyRequirement1", 0, 0 )
	Objective.SetParent			( "Grant_MassEmployment" )
	Objective.RequireRoom			( "Staffroom", true )
	
	Objective.CreateGrant			( "Grant_MassEmployment_MyRequirement2", 0, 0 )
	Objective.SetParent			( "Grant_MassEmployment" )
	Objective.RequireObjects                ( "Policeman", 30 )
end


