Class {
	#name : #ReifiedVar,
	#superclass : #Var,
	#category : 'MicroKanren-core'
}

{ #category : #'as yet unclassified' }
ReifiedVar >> = other [
	^ other equalReifiedVar: self
]

{ #category : #dispatched }
ReifiedVar >> equalReifiedVar: aReifiedVar [
	^ id = aReifiedVar id
]

{ #category : #'as yet unclassified' }
ReifiedVar >> hash [
	^ id hash
]

{ #category : #accessing }
ReifiedVar >> id [
	^ id
]

{ #category : #'as yet unclassified' }
ReifiedVar >> reifyUsing: aReifier [ 
	"No work to be done here because a ReifiedVar is already reified, btw."

	^ aReifier reifyReifiedVar: self
]
