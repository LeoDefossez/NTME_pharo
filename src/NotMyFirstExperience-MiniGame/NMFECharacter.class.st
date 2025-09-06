"
### I'm NMFECharacter, the super class of all characters in the NMFE mini game  


#### What do I offer?

- hp : How resistants is the character
- force : How strong is the character
- charisma : How much style the character has (Influence the initiave in a fight)
- name : Every character want a name
"
Class {
	#name : 'NMFECharacter',
	#superclass : 'Object',
	#instVars : [
		'hp',
		'force',
		'charisma',
		'hasLost',
		'characterName'
	],
	#category : 'NotMyFirstExperience-MiniGame',
	#package : 'NotMyFirstExperience-MiniGame'
}

{ #category : 'instance creation' }
NMFECharacter class >> named: aString [

	| inst |
	inst := self new.
	inst characterName: aString.
	^ inst
]

{ #category : 'as yet unclassified' }
NMFECharacter >> attack: aNMFECharacter [ 
	
	aNMFECharacter takeDamage: force.
]

{ #category : 'as yet unclassified' }
NMFECharacter >> characterName [
	^ characterName
]

{ #category : 'as yet unclassified' }
NMFECharacter >> characterName: aString [

	characterName := aString
]

{ #category : 'as yet unclassified' }
NMFECharacter >> charisma [
	^ charisma 
]

{ #category : 'as yet unclassified' }
NMFECharacter >> charisma: anInteger [ 
	charisma := anInteger
]

{ #category : 'as yet unclassified' }
NMFECharacter >> fight: aNMFECharacter [

	| first second |
	self charisma < aNMFECharacter charisma
		ifTrue: [
				first := aNMFECharacter.
				second := self ]
		ifFalse: [
				first := self.
				second := aNMFECharacter ].
	
	first attack: second.
	second hasLost ifTrue: [ ^ second loosingAction ].
	
	second attack: first.
	first hasLost
		ifTrue: [ ^ first loosingAction ]
		ifFalse: [ ^ self fight: aNMFECharacter ]
]

{ #category : 'as yet unclassified' }
NMFECharacter >> force [
	^ force
]

{ #category : 'as yet unclassified' }
NMFECharacter >> force: anInteger [

	force := anInteger
]

{ #category : 'as yet unclassified' }
NMFECharacter >> hasLost [
	hasLost ifNil: [ ^ hasLost := false ].
	^ hasLost
]

{ #category : 'as yet unclassified' }
NMFECharacter >> hp [
	^ hp
]

{ #category : 'as yet unclassified' }
NMFECharacter >> hp: anInteger [

	hp := anInteger
]

{ #category : 'as yet unclassified' }
NMFECharacter >> loosingAction [
	
	Transcript open; clear; nextPutAll: characterName , ' has lost'
]

{ #category : 'as yet unclassified' }
NMFECharacter >> takeDamage: anInteger [

	hp := hp - anInteger.
	hp <= 0 ifTrue: [ hasLost := true ]
]
