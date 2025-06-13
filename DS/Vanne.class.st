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
