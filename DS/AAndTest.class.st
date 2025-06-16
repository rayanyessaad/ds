Class {
	#name : 'AAndTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
AAndTest >> testTableVerite [ [
    | i1 i2 andGate |

    "Interrupteurs"
    i1 := Interrupteur new.   "off"
    i2 := Interrupteur new.   "off"

    "Porte AND"
    andGate := And new.
    andGate entrees: i1 et: i2.

    "0 0 → 0"
    self assert: andGate state equals: false.

    "1 0 → 0"
    i1 on.
    self assert: andGate state equals: false.

    "0 1 → 0"
    i1 off. i2 on.
    self assert: andGate state equals: false.

    "1 1 → 1"
    i1 on.
    self assert: andGate state equals: true.
]
]
