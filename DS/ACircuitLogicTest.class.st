Class {
	#name : 'ACircuitLogicTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
ACircuitLogicTest >> testTousOff [ [
    | i1 i2 securite orGate notGate andGate valve |

    i1 := Interrupteur new.
    i2 := Interrupteur new.
    securite := Interrupteur new. securite off.

    orGate := Or new.
    orGate entrees: i1 et: i2.

    notGate := Not new.
    notGate entree: securite.

    andGate := And new.
    andGate entrees: orGate et: notGate.

    valve := Vanne new.
    valve entree: andGate.

    self assert: valve state equals: false.
]
]
