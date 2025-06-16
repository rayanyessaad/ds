Class {
	#name : 'A2OrTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
A2OrTest >> testTableVerite [ [
    | i1 i2 orGate |

    "Interrupteurs OFF"
    i1 := Interrupteur new.
    i2 := Interrupteur new.

    "Porte OR"
    orGate := Or new.
    orGate entrees: i1 et: i2.

    "0 0 → 0"
    self assert: orGate state equals: false.

    "1 0 → 1"
    i1 on.
    self assert: orGate state equals: true.

    "0 1 → 1"
    i1 off.  i2 on.
    self assert: orGate state equals: true.

    "1 1 → 1"
    i1 on.
    self assert: orGate state equals: true.
]
]
