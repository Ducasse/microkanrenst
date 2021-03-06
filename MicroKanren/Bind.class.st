Class {
	#name : #Bind,
	#superclass : #StreamCombination,
	#instVars : [
		'combiner',
		'stream'
	],
	#category : 'MicroKanren-core'
}

{ #category : #creating }
Bind class >> combine: aGoal with: aCollection [
	^ self new
		combiner: aGoal;
		stream: aCollection;
		yourself
]

{ #category : #initializing }
Bind >> combiner: aGoal [
	combiner := aGoal
]

{ #category : #dispatched }
Bind >> interleavedStrategy: anInterleaved [
	^ stream bind: combiner interleaved: anInterleaved
]

{ #category : #dispatched }
Bind >> sequentialStrategy: aSequential [
	^ stream bind: combiner sequential: aSequential
]

{ #category : #initializing }
Bind >> stream: aCollection [
	stream := aCollection
]
