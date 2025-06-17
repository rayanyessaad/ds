"
tititot
"
Class {
	#name : 'SignalHaut',
	#superclass : 'Object',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
SignalHaut >> and: aSignal [
    ^ aSignal value
        ifTrue:  [ self ]         "1 ∧ 1 = 1"
        ifFalse: [ SignalBas new ].
]

{ #category : 'accessing' }
SignalHaut >> not [     
	^ SignalBas new.

]

{ #category : 'accessing' }
SignalHaut >> or:  aSignal [
    ^ self                        "1 ∨ x = 1"
]

{ #category : 'accessing' }
SignalHaut >> value [   
	^ true.
]
