function IceAccretionWarning(feature, featurePortrayal, contextParameters)
	local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Surface then
		if feature.iceAccretionRate == 1 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'CHMGF')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:CHMGF,0.5")
		elseif feature.iceAccretionRate == 2 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'CHMGD')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:CHMGD,0.5")
		end
	else
        error ('Invalid Primitive')
    end

	return viewingGroup
end