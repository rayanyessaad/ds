Class {
	#name : 'ComposantDescriptionTest',
	#superclass : 'TestCase',
	#category : 'DS',
	#package : 'DS'
}

{ #category : 'accessing' }
ComposantDescriptionTest >> testShortDescriptionInterrupteur [
    | sw |
    sw := Interrupteur new.
    "Doit contenir le nom de la classe et son hash"
    self assert: (sw shortDescription beginsWith: 'Interrupteur (').
    "Hash hex présent entre parenthèses : 8 chiffres mini"
    self assert: ((sw shortDescription findString: '(') > 0).
]
