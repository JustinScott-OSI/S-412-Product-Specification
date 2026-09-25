function SignificantWaveHeightWarning(feature, featurePortrayal, contextParameters)
	local viewingGroup

    if feature.PrimitiveType == PrimitiveType.Surface then
		if feature.significantWaveHeightWarningThreshold == 1 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'RESBL')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:DEPMS,0.5")
		elseif feature.significantWaveHeightWarningThreshold == 2 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'RESBL')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:DEPVS,0.5")
		elseif feature.significantWaveHeightWarningThreshold == 3 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'RESBL')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:RESBL,0.5")
		elseif feature.significantWaveHeightWarningThreshold == 4 then
			viewingGroup = 31020
			featurePortrayal:AddInstructions('ViewingGroup:31020;DrawingPriority:15;DisplayPlane:OVERRADAR;')

			featurePortrayal:SimpleLineStyle('solid',0.64,'RESBL')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
			featurePortrayal:AddInstructions("ColorFill:RESBL,0.25")
		end
	else
        error ('Invalid Primitive')
    end

	return viewingGroup
end