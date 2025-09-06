Class {
	#name : 'NMFEProgrammer',
	#superclass : 'NMFECharacter',
	#category : 'NotMyFirstExperience-MiniGame',
	#package : 'NotMyFirstExperience-MiniGame'
}

{ #category : 'initialization' }
NMFEProgrammer >> initialize [

	super initialize.
	hp := 10.
	force := 1.
	charisma := 5
]
