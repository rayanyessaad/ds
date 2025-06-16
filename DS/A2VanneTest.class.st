Class {
	#name : 'A2VanneTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
A2VanneTest >> testOuverture [ [
    | sw v |
    sw := Interrupteur new.      "OFF → false"
    v  := Vanne new.
    v entree: sw.

    self assert: v state equals: false.   "fermée"

    sw on.
    self assert: v state equals: true.    "ouverte"
]
]
