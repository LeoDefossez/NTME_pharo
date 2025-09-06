Class {
	#name : 'NMFEProgrammerWinAgainstBug',
	#superclass : 'NMFEScenario',
	#category : 'NotMyFirstExperience-MiniGame',
	#package : 'NotMyFirstExperience-MiniGame'
}

{ #category : 'executing' }
NMFEProgrammerWinAgainstBug class >> execute [

	| prog exam |
	prog := NMFEProgrammer named: #student.
	exam := NMFEBug named: #simpleExam.
	
	self make: prog strongerThan: exam.
	prog fight: exam.
]
