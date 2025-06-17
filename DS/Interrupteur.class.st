"
un Interrupteur n’a pas d’entrée
"
Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'signal'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
Interrupteur >> evaluate [
    ^ signal
        ifTrue:  [ SignalHaut new ]
        ifFalse: [ SignalBas new ].

]

{ #category : 'accessing' }
Interrupteur >> off [
    signal := false

]

{ #category : 'accessing' }
Interrupteur >> on [
    signal := true

]

{ #category : 'accessing' }
Interrupteur >> state [
    ^ signal ifNil: false         "nil → false"

]
