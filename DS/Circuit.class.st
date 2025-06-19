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
Circuit >> evaluate [
    | signaux |
    signaux := vannes collect: [ :v |
        | sig |
        sig := v evaluate.
        Transcript
            show: nom; show: ' - ';
            show: v shortDescription; show: '  →  ';
            show: sig value printString; cr.
        sig ].
    ^ signaux

]

{ #category : 'accessing' }
Circuit >> initializeNamed: aString withComponents: aCollection [ "Configure un circuit"
    nom := aString."Stocke nom du circuit"
    "Transforme la collection reçue en OrderedCollection,  trie les comp via leur id croissant"
    composants := aCollection
                    asOrderedCollection
                    sort: [ :a :b | a id <= b id ].

    "Récupère tous les interrupteurs présents dans la collection de composants"
    interrupteurs := composants select: [ :c | c isKindOf: Interrupteur ].

    "Récupère toutes les vannes présentes dans la collection de composants"
    vannes := composants select: [ :c | c isKindOf: Vanne ].

]

{ #category : 'accessing' }
Circuit >> interrupteurs [
    ^ interrupteurs
]

{ #category : 'accessing' }
Circuit >> vannes [
    ^ vannes

]
