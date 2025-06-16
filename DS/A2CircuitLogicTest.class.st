Class {
	#name : 'A2CircuitLogicTest',
	#superclass : 'TestCase',
	#instVars : [
		'i1',
		'i2',
		'securite',
		'orGate',
		'notGate',
		'andGate',
		'valve'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
A2CircuitLogicTest >> setUp [ [
	"Interrupteurs"
	i1 := Interrupteur new.          "OFF"
	i2 := Interrupteur new.          "OFF"
	securite := Interrupteur new.    "OFF  (sécurité inactive)"

	"OR = i1 ∨ i2"
	orGate := Or new.
	orGate entrees: i1 et: i2.

	"NOT = ¬sécurité"
	notGate := Not new.
	notGate entree: securite.

	"AND = OR ∧ NOT"
	andGate := And new.
	andGate entrees: orGate et: notGate.

	"Vanne branchée sur AND"
	valve := Vanne new.
	valve entree: andGate.
]
]

{ #category : 'accessing' }
A2CircuitLogicTest >> testI1Seulement [ [
	i1 on.   "1 OR 0 = 1 ; NOT(0) = 1 ; AND = 1"
	self assert: valve state equals: true
]
]

{ #category : 'accessing' }
A2CircuitLogicTest >> testI2Seulement [ [
	i2 on.   "0 OR 1 = 1 ; NOT(0) = 1 ; AND = 1"
	self assert: valve state equals: true
]
]

{ #category : 'accessing' }
A2CircuitLogicTest >> testSecuriteBloque [ [
	i1 on.            "fait passer OR à 1"
	securite on.      "NOT(1) = 0  → AND = 0"
	self assert: valve state equals: false
]
]

{ #category : 'accessing' }
A2CircuitLogicTest >> testTousLesDeux [ [
	i1 on.  i2 on.    "1 OR 1 = 1 ; NOT(0) = 1 ; AND = 1"
	self assert: valve state equals: true
]
]

{ #category : 'accessing' }
A2CircuitLogicTest >> testTousOff [ [
	"0 OR 0 = 0 ; NOT(0) = 1 ; AND = 0 ⇒ vanne fermée"
	self assert: valve state equals: false
]
]
