versions
version0718: spec
	<version: '0.7.18' imports: #('0.7.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '0.7.17 : oid values are central to the ASN1 model. I refactored some stuff to make working with it easier. This includes:

- renaming ASN1ObjectIdentifierValue to ASN1Oid. The abbrevation oid is quite common for users of ASN.1. The short name is therefor no troublesome abbrevation but makes to work with it more appealing. 
- added a #value selector to ASN1Oid that returns the oid string so that the API can take ASN1Oid objects or strings as parameter
- added method extension to String>>#asAsn1Oid for a convenient way of creating ASN1Oid objects
0.7.18 : added search facilities: for finding a type by its key inside a composite type. And for finding a tagged value inside a composite tagged value by its tag'.
		spec author: 'NorbertHartl'.
		spec timestamp: '8/28/2013 12:08'.
		spec project: 'PetitParser' with: '1.5'.
		spec 
			package: 'ASN1-Common' with: 'ASN1-Common-NorbertHartl.6';
			package: 'ASN1-Syntax' with: 'ASN1-Syntax-NorbertHartl.6';
			package: 'ASN1-Tests-Syntax' with: 'ASN1-Tests-Syntax-NorbertHartl.2';
			package: 'ASN1-AST' with: 'ASN1-AST-NorbertHartl.61';
			package: 'ASN1-Tests-AST' with: 'ASN1-Tests-AST-NorbertHartl.7';
			package: 'ASN1-Model' with: 'ASN1-Model-NorbertHartl.54';
			package: 'ASN1-Tests-Model' with: 'ASN1-Tests-Model-NorbertHartl.4';
			package: 'ASN1-Builder' with: 'ASN1-Builder-NorbertHartl.10';
			package: 'ASN1-Tests-Builder' with: 'ASN1-Tests-Builder-NorbertHartl.2';
			package: 'ASN1-Codec' with: 'ASN1-Codec-NorbertHartl.19';
			package: 'ASN1-Tests-Codec' with: 'ASN1-Tests-Codec-NorbertHartl.1';
			package: 'ASN1-Tool' with: 'ASN1-Tool-NorbertHartl.37';
			package: 'ASN1-Tests-Tool' with: 'ASN1-Tests-Tool-NorbertHartl.4'. ].