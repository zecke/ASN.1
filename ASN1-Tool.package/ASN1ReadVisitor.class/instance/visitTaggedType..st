visiting
visitTaggedType: aTaggedType 
	"resolve the tagging environment over the tagged type because it is defined in the module
	defining the tagging environment (the type of the tagged type might be imported from another
	module. Delegate the decoding to the type of the tagged type so that types can alter the tagging 
	environment themselves (e.g. choicces are always explicit)"
	| basicValue |
	basicValue := self 
		push: (aTaggedType readEncodedValue: currentTaggedValue) 
		during: [ self visit: aTaggedType type ].
	basicValue type: aTaggedType type.
	^ ASN1TaggedValue new
		type: aTaggedType; 
		value: basicValue