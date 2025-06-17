Class {
	#name : 'A3CircuitIntegrationTest',
	#superclass : 'TestCase',
	#instVars : [
		'circuit',
		'i1',
		'i2',
		'security',
		'valve'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
A3CircuitIntegrationTest >> setUp [
    "Construit exactement le circuit du sujet :"
| orGate notGate andGate |
[
    "Interrupteurs"
    i1 := Interrupteur new.
    i2 := Interrupteur new.
    security := Interrupteur new.     "sécurité OFF"

    "Portes"
    orGate  := Or new.
    orGate entrees: i1 et: i2.

    notGate := Not new.
    notGate entree: security.

    andGate := And new.
    andGate entrees: orGate et: notGate.

    "Vanne"
    valve := Vanne new.
    valve entree: andGate.

    "Circuit"
    circuit := Circuit
                 buildNamed: 'Test' 
                 withComponents: { i1. i2. security. orGate. notGate. andGate. valve }.
]

]

{ #category : 'tests' }
A3CircuitIntegrationTest >> testCollections [
    "Le circuit doit recenser correctement interrupteurs et vannes."
[
    self assert: circuit interrupteurs size equals: 3.
    self assert: circuit vannes size equals: 1.
]
]

{ #category : 'tests' }
A3CircuitIntegrationTest >> testComportementVanne [
    "La logique : (i1 OR i2) AND ¬security."
[
    "Tous OFF  → vanne fermée"
    self assert: valve state equals: false.

    "i1 ON  → ouverte"
    i1 on.
    self assert: valve state equals: true.

    "Sécurité ON  → refermée"
    security on.
    self assert: valve state equals: false.
]
]
