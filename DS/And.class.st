"
And

"
Class {
	#name : 'And',
	#superclass : 'Porte2Entrees',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
And >> createBlElement [ [
    blElement := BlElement new
        image: (Form fromFileNamed: 'porte_and.png').
    ^ blElement
]

]

{ #category : 'accessing' }
And >> evaluate [
    | s1 s2 |
    s1 := entree1 ifNil:[ SignalBas new ] ifNotNil:[ entree1 evaluate ].
    s2 := entree2 ifNil:[ SignalBas new ] ifNotNil:[ entree2 evaluate ].
    ^ s1 and: s2

]

{ #category : 'accessing' }
And >> state [
	| s1 s2 |
	s1 := entree1 ifNil: false ifNotNil: [ entree1 state ].
	s2 := entree2 ifNil: false ifNotNil: [ entree2 state ].
	^ s1 & s2    "ET logique"

]
