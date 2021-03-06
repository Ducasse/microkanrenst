Class {
	#name : #McCullochRightHalfAssociateRule,
	#superclass : #InductionRule,
	#category : 'MicroKanren-theories'
}

{ #category : #computing }
McCullochRightHalfAssociateRule >> consumes: alpha produces: half_associate machine: aMachine [
	^ [ :beta :gamma | 
	(alpha unifyWith: (6 cons: beta))
		& ((half_associate unifyWith: (2 cons: gamma)) & (aMachine proves: beta relates: gamma)) ]
		fresh
]
