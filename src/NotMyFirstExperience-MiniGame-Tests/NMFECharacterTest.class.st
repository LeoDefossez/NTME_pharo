Class {
	#name : 'NMFECharacterTest',
	#superclass : 'TestCase',
	#instVars : [
		'character1',
		'character2'
	],
	#category : 'NotMyFirstExperience-MiniGame-Tests',
	#package : 'NotMyFirstExperience-MiniGame-Tests'
}

{ #category : 'running' }
NMFECharacterTest >> setUp [
	super setUp.

	character1 := NMFEMockCharacter named: #will.
	character2 := NMFEMockCharacter named: #will.
]

{ #category : 'tests' }
NMFECharacterTest >> testCharacterTakeDamage [
	
	| hpBefore damage |
	hpBefore := character1 hp.
	damage := hpBefore - 1.
	
	character1 takeDamage: damage.
	
	self assert: character1 hp equals: hpBefore - damage.
	
]

{ #category : 'tests' }
NMFECharacterTest >> testCharacterTakeDamageCanMakeYouLoose [
	
	| damage |
	damage := character1 hp.
	
	character1 takeDamage: damage.
	
	self assert: character1 hasLost
	
]

{ #category : 'tests' }
NMFECharacterTest >> testFight [

	character1 charisma: character2 charisma + 1.

	character1 fight: character2.

	self assert: character2 hasLost.
	self assert: character2 loosingActionDone
]
