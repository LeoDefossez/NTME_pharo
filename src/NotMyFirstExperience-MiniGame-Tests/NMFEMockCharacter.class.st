Class {
	#name : 'NMFEMockCharacter',
	#superclass : 'NMFECharacter',
	#instVars : [
		'loosingActionDone'
	],
	#category : 'NotMyFirstExperience-MiniGame-Tests',
	#package : 'NotMyFirstExperience-MiniGame-Tests'
}

{ #category : 'initialization' }
NMFEMockCharacter >> initialize [

	super initialize.
	hp := 10.
	force := 1.
	charisma := 5.
	loosingActionDone := false
]

{ #category : 'as yet unclassified' }
NMFEMockCharacter >> loosingAction [
	"No loosing action"

	loosingActionDone := true
]

{ #category : 'as yet unclassified' }
NMFEMockCharacter >> loosingActionDone [

	^ loosingActionDone 
]
