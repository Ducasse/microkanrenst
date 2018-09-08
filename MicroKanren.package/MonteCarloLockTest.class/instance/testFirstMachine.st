tests
testFirstMachine
	| g |
	"McCulloch's first machine"
	g := [ :a | self mcculloch proves: a relates: a ] fresh.
	self assert: (g solutions atMost: 1) equals: {#(3 2 3) asCons}.

	"Montecarlo lock"
	g := [ :a | self mclock proves: a relates: a ] fresh.
	self
		assert: ((g solutions atMost: 1) collect: #asLinkedList)
		equals: {#(5 4 6 4 2 5 4 6 4 2)}