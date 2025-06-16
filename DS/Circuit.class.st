"
Encapsuler tout le montage dans un seul objet Circuit.

Garder à l’intérieur :

la collection complète de composants (composants);

une sous-collection des interrupteurs (interrupteurs);

une sous-collection des vannes (vannes).
"
Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'composants',
		'interrupteurs',
		'vannes'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
Circuit class >> buildNamed: aString withComponents: aCollection [ 
		^ (self new) initializeNamed: aString withComponents: aCollection; yourself
]

{ #category : 'accessing' }
Circuit >> initializeNamed: aString withComponents: aCollection [
    nom := aString.

    "collection complète triée par id"
    composants := aCollection
                    asOrderedCollection
                    sort: [ :a :b | a id <= b id ].

    "sous-collections"
    interrupteurs := composants select: [ :c | c isKindOf: Interrupteur ].
    vannes        := composants select: [ :c | c isKindOf: Vanne ].

]

{ #category : 'accessing' }
Circuit >> interrupteurs [
    ^ interrupteurs
]

{ #category : 'accessing' }
Circuit >> vannes [
    ^ vannes

]
