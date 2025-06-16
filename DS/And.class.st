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
And >> state [
	| s1 s2 |
	s1 := entree1 ifNil: false ifNotNil: [ entree1 state ].
	s2 := entree2 ifNil: false ifNotNil: [ entree2 state ].
	^ s1 & s2    "ET logique"

]
