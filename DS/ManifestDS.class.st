"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestDS',
	#superclass : 'PackageManifest',
	#category : 'DS-Manifest',
	#package : 'DS',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestDS class >> ruleDeadBlockRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#AnObsoleteACircuitLogicTest)) #'2025-06-16T15:38:13.418344+02:00') )
]
