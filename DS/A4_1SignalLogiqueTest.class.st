Class {
	#name : 'A4_1SignalLogiqueTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
A4_1SignalLogiqueTest >> testAnd [ 
    self assert: ((SignalHaut new and: SignalHaut new) value).
    self deny:   ((SignalHaut new and: SignalBas  new) value).
    self deny:   ((SignalBas  new and: SignalHaut new) value).
    self deny:   ((SignalBas  new and: SignalBas  new) value).
]

{ #category : 'accessing' }
A4_1SignalLogiqueTest >> testNot [
    self assert: ((SignalHaut new not) isKindOf: SignalBas).
    self assert: ((SignalBas  new not) isKindOf: SignalHaut).

]

{ #category : 'accessing' }
A4_1SignalLogiqueTest >> testOr [ 
    self assert: ((SignalHaut new or: SignalHaut new) value).
    self assert: ((SignalHaut new or: SignalBas  new) value).
    self assert: ((SignalBas  new or: SignalHaut new) value).
    self deny:   ((SignalBas  new or: SignalBas  new) value).

]

{ #category : 'accessing' }
A4_1SignalLogiqueTest >> testValue [ [
    self assert: SignalHaut new value.
    self deny:   SignalBas  new value.
]
]
