function DataCoverage(feature, featurePortrayal, contextParameters)
	local viewingGroup = 31020
	featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:3;DisplayPlane:UnderRadar;NullInstruction')
	return viewingGroup
end