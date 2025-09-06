Class {
	#name : 'NMFEBug',
	#superclass : 'NMFECharacter',
	#category : 'NotMyFirstExperience-MiniGame',
	#package : 'NotMyFirstExperience-MiniGame'
}

{ #category : 'initialization' }
NMFEBug >> initialize [

	super initialize.
	hp := 10.
	force := 1.
	charisma := 5
]
