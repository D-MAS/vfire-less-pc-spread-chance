	--[[-------------------------------------------------------------------------
	Set player spread base chance
	---------------------------------------------------------------------------]]
	local vFirePCSpreadBaseConVar = CreateConVar("vfire_pc_spread_base", "0.8", FCVAR_ARCHIVE, "The chance fire will spread to players if they're not on fire already.")
	vFirePCSpreadBase = vFirePCSpreadBaseConVar:GetFloat()
	cvars.AddChangeCallback("vfire_pc_spread_base", function(convar, old, new)
		vFirePCSpreadBase = vFirePCSpreadBaseConVar:GetFloat()
	end)

	--[[-------------------------------------------------------------------------
	Set fire damage multiplier
	---------------------------------------------------------------------------]]
	local vFirePCSpreadOnFireConVar = CreateConVar("vfire_pc_spread_onfire", "0.5", FCVAR_ARCHIVE, "The chance that fire from other objects spread to players. Stacks multiplicatively.")
	vFirePCSpreadOnFire = vFirePCSpreadOnFireConVar:GetFloat()
	cvars.AddChangeCallback("vfire_pc_spread_onfire", function(convar, old, new)
		vFirePCSpreadOnFire = vFirePCSpreadOnFireConVar:GetFloat()
	end)

	--[[-------------------------------------------------------------------------
	Set fire damage multiplier
	---------------------------------------------------------------------------]]
	local vFirePCSpreadToSelfConVar = CreateConVar("vfire_pc_spread_self", "0", FCVAR_ARCHIVE, "The chance fire spreads to self from self. Stacks with OnFire multiplier.")
	vFirePCSpreadToSelf = vFirePCSpreadToSelfConVar:GetFloat()
	cvars.AddChangeCallback("vfire_pc_spread_self", function(convar, old, new)
		vFirePCSpreadToSelf = vFirePCSpreadToSelfConVar:GetFloat()
	end)

