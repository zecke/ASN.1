visiting
visitBitStringValueNode: aBitStringValueNode 
	^ ASN1BitStringValue new
		type: (self visit: aBitStringValueNode type) value;
		contents: aBitStringValueNode value;
		module: module