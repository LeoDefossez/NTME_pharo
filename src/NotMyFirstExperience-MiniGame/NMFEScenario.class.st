Class {
	#name : 'NMFEScenario',
	#superclass : 'Object',
	#category : 'NotMyFirstExperience-MiniGame',
	#package : 'NotMyFirstExperience-MiniGame'
}

{ #category : 'as yet unclassified' }
NMFEScenario class >> make: aNMFECharacter strongerThan: anotherNMFECharacter [

	aNMFECharacter charisma: anotherNMFECharacter charisma + 1.

	aNMFECharacter force: anotherNMFECharacter force + 1.

	aNMFECharacter hp: anotherNMFECharacter hp + 1
]
