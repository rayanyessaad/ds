"
Classe racine fournit la methode id qui retourne un identifiant unique 

"
Class {
	#name : 'Composant',
	#superclass : 'Object',
	#instVars : [
		'id',
		'blElement'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
Composant >> blElement [ [
    ^ blElement ifNil: [ self createBlElement ]   "crée au premier appel"
]

]

{ #category : 'accessing' }
Composant >> createBlElement [ [
    "Par défaut : petit carré gris – sera surchargé."
    blElement := BlElement new
        background: Color veryLightGray;
        extent: 40@40.
    ^ blElement
]
]

{ #category : 'accessing' }
Composant >> id [
    ^ self hash.

]

{ #category : 'accessing' }
Composant >> shortDescription [
    "Renvoie 'NomDeClasse (idHex)' en concaténant de simples chaînes."
    ^ (self class name asString) "interrupteur ectt"
        , ' ('
        , (self id hex)       "hex est compris dans Pharo"
        , ')'.



]

{ #category : 'accessing' }
Composant >> state [
    ^ (self evaluate) value

]
