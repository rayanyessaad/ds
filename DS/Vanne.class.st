"
une Vanne est connectée en entrée sur un composant (in)
"
Class {
	#name : 'Vanne',
	#superclass : 'Composant',
	#instVars : [
		'entree'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
Vanne >> description [
    ^ self shortDescription
        , ' in: '
        , (entree
              ifNil: [ 'non connecte' ]
              ifNotNil: [ entree shortDescription ]).

]

{ #category : 'accessing' }
Vanne >> entree: comp [
	entree := comp
]

{ #category : 'accessing' }
Vanne >> evaluate [
    ^ entree
        ifNil:    [ SignalBas new ]
        ifNotNil: [ entree evaluate ].

]

{ #category : 'accessing' }
Vanne >> state [
	^ entree
		ifNil:  false
		ifNotNil: [ entree state ]
]
