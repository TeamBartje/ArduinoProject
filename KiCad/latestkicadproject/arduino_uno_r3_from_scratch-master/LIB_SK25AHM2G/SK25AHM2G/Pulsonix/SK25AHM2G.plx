PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//971804/36500/2.24/2/4/Diode

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r225_205"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 2.05) (shapeHeight 2.25))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "DIOM5437X240N" (originalName "DIOM5437X240N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r225_205) (pt -2.35, 0) (rotation 90))
			(pad (padNum 2) (padStyleRef r225_205) (pt 2.35, 0) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.725 2.25) (pt 3.725 2.25) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 3.725 2.25) (pt 3.725 -2.25) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 3.725 -2.25) (pt -3.725 -2.25) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.725 -2.25) (pt -3.725 2.25) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.7 1.85) (pt 2.7 1.85) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 2.7 1.85) (pt 2.7 -1.85) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 2.7 -1.85) (pt -2.7 -1.85) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.7 -1.85) (pt -2.7 1.85) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2.7 0.825) (pt -1.675 1.85) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.7 1.85) (pt -3.375 1.85) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.7 -1.85) (pt 2.7 -1.85) (width 0.2))
		)
	)
	(symbolDef "SK25AHM2G" (originalName "SK25AHM2G")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -35 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 600 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 600 mils -35 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 0 mils) (pt 400 mils 100 mils) (width 6 mils))
		(line (pt 400 mils 100 mils) (pt 400 mils -100 mils) (width 6 mils))
		(line (pt 400 mils -100 mils) (pt 200 mils 0 mils) (width 6 mils))
		(line (pt 200 mils 100 mils) (pt 200 mils -100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 450 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 450 mils 100 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "SK25AHM2G" (originalName "SK25AHM2G") (compHeader (numPins 2) (numParts 1) (refDesPrefix D)
		)
		(compPin "1" (pinName "K") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "A") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "SK25AHM2G"))
		(attachedPattern (patternNum 1) (patternName "DIOM5437X240N")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "Taiwan Semiconductor")
		(attr "Manufacturer_Part_Number" "SK25AHM2G")
		(attr "RS Part Number" "")
		(attr "RS Price/Stock" "")
		(attr "Description" "DIODE SCHOTTKY 50V 2A DO214AC")
		(attr "<Hyperlink>" "https://www.tme.eu/it/Document/d871a179795794e96dbabe1c032e5183/SK22-DIO.pdf")
		(attr "<Component Height>" "2.3999")
		(attr "<STEP Filename>" "SK25AHM2G.stp")
	)

)
