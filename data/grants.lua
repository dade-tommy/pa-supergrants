-- Super Grants
-- Community Prison Architect Mod
-- Author: dade-tommy
-- v1.1
-- Further information: https://github.com/dade-tommy/pa-supergrants

-- -x- -x- -x- -x- -x-

function CreateGrants()
	CreateMassEmployment();
	CreateStreetCleanup();
	CreateSecuredPension();
	
	CreateStateBondInvestment();
	CreateWallStreetInvestment();
end

-- -x- -x- -x- -x- -x-

function CreateMassEmployment()

	Objective.CreateGrant                   ( "Grant_MassEmployment", 2500, 2500 )
	
	Objective.CreateGrant			( "Grant_MassEmployment_MyRequirement1", 0, 0 )
	Objective.SetParent			( "Grant_MassEmployment" )
	Objective.RequireRoom			( "Staffroom", true )
	
	Objective.CreateGrant			( "Grant_MassEmployment_MyRequirement2", 0, 0 )
	Objective.SetParent			( "Grant_MassEmployment" )
	Objective.RequireObjects                ( "Policeman", 30 )
end

function CreateStreetCleanup()

	Objective.CreateGrant			( "Grant_StreetCleanup", 2000, 8000 )
	Objective.SetPreRequisite		( "Completed", "Grant_EducationReformProgram", 0)

	Objective.CreateGrant			( "Grant_StreetCleanup_MyRequirement1", 0, 0 )
	Objective.SetParent			( "Grant_StreetCleanup" )
	Objective.RequireObjects		( "Prisoner", 60, "prisoner" )
end

function CreateSecuredPension()
	
	Objective.CreateGrant			( "Grant_SecuredPension", 0, 2000 )
	
	Objective.SetPreRequisite      		( "Cash", "AtLeast", 10000 )
	Objective.SetPreRequisite      		( "Cashflow", "AtLeast", 0 )

	Objective.CreateGrant          		( "Grant_SecuredPension_Cashflow", 0, 0 )
	Objective.SetParent            		( "Grant_SecuredPension" )
	Objective.Requires             		( "Cashflow", "AtLeast", 2000 )
end

function  CreateStateBondInvestment()
	Objective.CreateGrant           	( "Grant_StateBondInvestment", -10000, 20000 )
	Objective.SetPreRequisite       	( "Unlocked", "Finance", 0 )
	Objective.SetPreRequisite       	( "Unlocked", "Lawyer", 0 )
	Objective.SetPreRequisite       	( "Completed", "Grant_ShortTermInvestment", 0 )
	Objective.SetPreRequisite       	( "Completed", "Grant_LongTermInvestment", 0 )
	Objective.HiddenWhileLocked()
    
	Objective.CreateGrant           	( "Grant_StateBondInvestment_Wait", 0, 0 )
	Objective.SetParent             	( "Grant_StateBondInvestment" )
	Objective.RequireTimePassed     	( 10080 )
end
	
function CreateWallStreetInvestment()
	Objective.CreateGrant           	( "Grant_WallStreetInvestment", -25000, 50000 )
	Objective.SetPreRequisite       	( "Unlocked", "Finance", 0 )
	Objective.SetPreRequisite       	( "Unlocked", "Lawyer", 0 )
	Objective.SetPreRequisite       	( "Completed", "Grant_ShortTermInvestment", 0 )
	Objective.SetPreRequisite       	( "Completed", "Grant_LongTermInvestment", 0 )
	Objective.SetPreRequisite       	( "Completed", "Grant_StateBondInvestment", 0 )
	Objective.HiddenWhileLocked()
    
	Objective.CreateGrant           	( "Grant_WallStreetInvestment_Wait", 0, 0 )
	Objective.SetParent             	( "Grant_WallStreetInvestment" )
	Objective.RequireTimePassed     	( 10080 )
end
