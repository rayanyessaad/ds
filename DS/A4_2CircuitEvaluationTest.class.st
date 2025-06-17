Class {
	#name : 'A4_2CircuitEvaluationTest',
	#superclass : 'TestCase',
	#instVars : [
		'i1',
		'i2',
		'sec',
		'orGate',
		'notGate',
		'andGate',
		'valve',
		'circuit'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
A4_2CircuitEvaluationTest >> setUp [ [
    i1 := Interrupteur new.          "OFF"
    i2 := Interrupteur new.          "OFF"
    sec := Interrupteur new.         "OFF  (sécurité inactive)"

    orGate  := Or  new.  orGate  entrees: i1 et: i2.
    notGate := Not new. notGate entree:  sec.
    andGate := And new. andGate entrees: orGate et: notGate.

    valve := Vanne new. valve entree: andGate.

    circuit := Circuit
        buildNamed: 'Eval4.2'
        withComponents: { i1. i2. sec. orGate. notGate. andGate. valve }.
]
]

{ #category : 'accessing' }
A4_2CircuitEvaluationTest >> testSignalInitial [
    "OR = 0, NOT = 1  →  AND = 0  →  vanne fermée"
    
    self assert: ((valve evaluate) isKindOf: SignalBas).

]
