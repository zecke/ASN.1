visiting
visitTypedSequenceNode: aNode
	^ ASN1TypedSequenceType new
		type: (self visit: aNode type);
		module: module