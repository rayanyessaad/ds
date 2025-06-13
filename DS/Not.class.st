"
Un Not a une connection en entrée sur un composant (in)
"
Class {
	#name : 'Not',
	#superclass : 'Porte',
	#instVars : [
		'entree'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
Not >> description [
    ^ self shortDescription
        , ' in: '
        , (entree
              ifNil: [ 'non connecte' ]
              ifNotNil: [ entree shortDescription ]).

]

{ #category : 'accessing' }
Not >> entree: aComposant [
    entree := aComposant


]
