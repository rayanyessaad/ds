"
un Interrupteur n’a pas d’entrée
"
Class {
	#name : 'Interrupteur',
	#superclass : 'Composant',
	#instVars : [
		'signal'
	],
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
Interrupteur >> createBlElement [
    | imageElem |

    "charge l’icône OFF ; si tu veux l’état ON, change le nom de fichier"
    imageElem := BlElement new
        image: (Form fromFileNamed: 'interrupteur_close.png').

    blElement := imageElem.
    ^ blElement

]

{ #category : 'accessing' }
Interrupteur >> evaluate [
    ^ signal
        ifTrue:  [ SignalHaut new ]
        ifFalse: [ SignalBas new ].

]

{ #category : 'accessing' }
Interrupteur >> off [
    signal := false

]

{ #category : 'accessing' }
Interrupteur >> on [
    signal := true

]

{ #category : 'accessing' }
Interrupteur >> openView [
    | space |
    space := BlSpace new.

    (self blElement) position: 0@0.      "← parenthèses indispensables"
    space add: self blElement.

    space openInWindowLabeled: 'Interrupteur'.  "ou juste  space openInWindow"

]

{ #category : 'accessing' }
Interrupteur >> state [
    ^ signal ifNil: [signal :=false]         "nil → false"

]

{ #category : 'operations' }
Interrupteur >> toggle [ 
    "Inverse l’état logique puis met à jour l’icône."
    signal := signal not.
    blElement image: (signal
        ifTrue:  [ Form fromFileNamed: 'interrupteur_close.png' ]
        ifFalse: [ Form fromFileNamed: 'interrupteur_open.png' ]).

]
