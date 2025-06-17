Class {
	#name : 'SignalBas',
	#superclass : 'Object',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
SignalBas >> and: aSignal [
    ^ self                        "0 ∧ x = 0"
]

{ #category : 'accessing' }
SignalBas >> not [     
		^ SignalHaut new.
]

{ #category : 'accessing' }
SignalBas >> or:  aSignal [
    ^ aSignal value
        ifTrue:  [ SignalHaut new ] "0 ∨ 1 = 1"
        ifFalse: [ self ].          "0 ∨ 0 = 0"
]

{ #category : 'accessing' }
SignalBas >> value [  
	 ^ false.
]
