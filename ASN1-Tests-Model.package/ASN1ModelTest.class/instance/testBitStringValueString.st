as yet unclassified
testBitStringValueString
	|  bitStringValue |
	
	bitStringValue := self bitStringTypeWithNamedBits newValue.
	bitStringValue contents: '0100'.
	self assert: (bitStringValue namedBits includes: 'two').	
	self assert: bitStringValue contents equals: '0100'.
	