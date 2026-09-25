function ThunderstormWarning(feature, featurePortrayal, contextParameters)
	local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Surface then
		viewingGroup = 31020
		featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

		featurePortrayal:SimpleLineStyle('solid',0.32,'CHBRN')
		featurePortrayal:AddInstructions('LineInstruction:_simple_')
		featurePortrayal:AddInstructions("ColorFill:CHBRN,0.5")
	else
        error ('Invalid Primitive')
    end

	return viewingGroup
end
