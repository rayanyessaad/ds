Class {
	#name : 'ANotTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
ANotTest >> testInverseSignal [ [
    | sw notGate |

    sw := Interrupteur new.          "OFF → false"
    notGate := Not new.
    notGate entree: sw.

    "0  →  1"
    self assert: notGate state equals: true.

    "1  →  0"
    sw on.
    self assert: notGate state equals: false.

    "retour à 0 → 1"
    sw off.
    self assert: notGate state equals: true.
]
]
