"
Classe racine fournit la methode id qui retourne un identifiant unique 

"
Class {
	#name : 'Composant',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'DS',
	#package : 'DS'
}

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
