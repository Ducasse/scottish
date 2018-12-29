"
Carte du jeu, représentée par leur couleur et leur valeur et s'affichant sous la forme 'Couleur Valeur'.
"
Class {
	#name : #ECOCard,
	#superclass : #Object,
	#instVars : [
		'color',
		'value'
	],
	#category : #Scottish
}

{ #category : #constant }
ECOCard class >> A [

	^ 'A'
]

{ #category : #constant }
ECOCard class >> B [

	^ 'B'
]

{ #category : #accessing }
ECOCard >> color [
	^ color
]

{ #category : #accessing }
ECOCard >> color: aString [
	color := aString
]

{ #category : #initialization }
ECOCard >> defaultColor [
	^ self class A
]

{ #category : #printing }
ECOCard >> displayString [
	 ^ self color, self valeur printString
]

{ #category : #initialization }
ECOCard >> initialize [
	super initialize.
	color := self defaultColor.
	value := 1
]

{ #category : #testing }
ECOCard >> isColorCorrect [
	"Vérifie que la couleur de la carte est comprise entre A et F"

	^ {ECOCard A . 'B' . 'C' . 'D' . 'E' .'F'} includes: color 
	
]

{ #category : #printing }
ECOCard >> printOn: aStream [

	aStream 
		nextPutAll: 'C:';
		nextPutAll: self color;
		print:  self valeur 
		
]

{ #category : #accessing }
ECOCard >> valeur [
	^ value
]

{ #category : #accessing }
ECOCard >> valeur: anInteger [
	value := anInteger
]

{ #category : #testing }
ECOCard >> valeurCorrecte [
	"Vérifie que la valeur de la carte est comprise entre 1 et 9"
	
	^ value between: 1 and: 9 
]
