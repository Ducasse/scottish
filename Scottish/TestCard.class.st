Class {
	#name : #TestCard,
	#superclass : #TestCase,
	#category : #Scottish
}

{ #category : #tests }
TestCard >> cardClass [
	^ ECOCard
]

{ #category : #tests }
TestCard >> testColors [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c color: 'R'.
	self assert: c color equals: 'R'
]

{ #category : #tests }
TestCard >> testDisplayString [ 

	self assert: self cardClass new displayString equals: 'A1'
]

{ #category : #tests }
TestCard >> testInitialize [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	self assert: c color equals: self cardClass A.
	self assert: c valeur equals:  1.
	self assert: c isColorCorrect.
	self assert: c isValueCorrect
]

{ #category : #tests }
TestCard >> testValue [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c value: 8.
	self assert: c valeur equals: 8
]

{ #category : #tests }
TestCard >> testValueIsInvalid [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c value: 15.
	self assert: c isValueCorrect not
]

{ #category : #tests }
TestCard >> testValueIsValid [
	"Vérifie que la valeur de la carte existe"

	| c |
	c := self cardClass new.
	c value: 4.
	self assert: c isValueCorrect
]
