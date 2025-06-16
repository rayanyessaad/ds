"
Porte2Entrees est abstraite et factorise les portes logiques à 2 entrées (And, Or, ...) connectées
en entrée sur 2 composants (in1 et in2)
"
Class {
	#name : 'Porte2Entrees',
	#superclass : 'Porte',
	#instVars : [
		'entree1',
		'entree2'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
Porte2Entrees >> description [
    ^ self shortDescription
        , ' in1: '
        , (entree1
              ifNil: [ 'non connecte' ]
              ifNotNil: [ entree1 shortDescription ])
        , ' in2: '
        , (entree2
              ifNil: [ 'non connecte' ]
              ifNotNil: [ entree2 shortDescription ]).

]

{ #category : 'accessing' }
Porte2Entrees >> entree1: comp [
	entree1 := comp
]

{ #category : 'accessing' }
Porte2Entrees >> entree2: comp [
	entree2 := comp
]

{ #category : 'accessing' }
Porte2Entrees >> entrees: comp1 et: comp2 [
	entree1 := comp1.
	entree2 := comp2
]
