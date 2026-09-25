function WindWarning(feature, featurePortrayal, contextParameters)
	local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Surface then
		if feature.windWarningThreshold == 1 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'CHGRN')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:CHGRN,0.5")
		elseif feature.windWarningThreshold == 2 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'CHYLW')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:CHYLW,0.5")
		elseif feature.windWarningThreshold == 3 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'NINFO')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:NINFO,0.5")
		elseif feature.windWarningThreshold == 4 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'DNGHL')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:DNGHL,0.5")
		end
	else
        error ('Invalid Primitive')
    end

	return viewingGroup
end