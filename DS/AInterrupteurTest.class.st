Class {
	#name : 'AInterrupteurTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
AInterrupteurTest >> testEtatInitial [ [
    | i |
    i := Interrupteur new.
    self assert: i state equals: false      "doit être OFF par défaut"]
]

{ #category : 'accessing' }
AInterrupteurTest >> testOnOff [ [
    | i |
    i := Interrupteur new.

    i on.
    self assert: i state equals: true.

    i off.
    self assert: i state equals: false
]
]
