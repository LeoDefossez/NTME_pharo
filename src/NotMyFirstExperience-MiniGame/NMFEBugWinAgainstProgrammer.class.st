Class {
	#name : 'NMFEBugWinAgainstProgrammer',
	#superclass : 'NMFEScenario',
	#category : 'NotMyFirstExperience-MiniGame',
	#package : 'NotMyFirstExperience-MiniGame'
}

{ #category : 'executing' }
NMFEBugWinAgainstProgrammer class >> execute [

	| prog exam |
	prog := NMFEProgrammer named: #student.
	exam := NMFEBug named: #simpleExam.

	self make: exam strongerThan: prog.
	prog fight: exam
]
