visiting
visitReferenceNode: aReferenceNode

	^ aReferenceNode isDeclaration 
		ifTrue: [ super visitReferenceNode: aReferenceNode ]
		ifFalse: [ 
			self 
				useModule: (self visit: (aReferenceNode definition propertyAt: #module)) 
				during: [ self visit: aReferenceNode definition ] ]