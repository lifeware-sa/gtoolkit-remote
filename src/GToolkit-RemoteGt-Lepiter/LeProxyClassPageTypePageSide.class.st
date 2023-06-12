Class {
	#name : #LeProxyClassPageTypePageSide,
	#superclass : #LeModel,
	#category : #'GToolkit-RemoteGt-Lepiter'
}

{ #category : #comparing }
LeProxyClassPageTypePageSide >> = anObject [
	"Answer whether the receiver and anObject represent the same page type."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
		
	^ self id = anObject id 
]

{ #category : #comparing }
LeProxyClassPageTypePageSide >> hash [
	^ self id hash
]

{ #category : #accessing }
LeProxyClassPageTypePageSide >> id [
	^ self subclassResponsibility
]

{ #category : #testing }
LeProxyClassPageTypePageSide >> isRemoteSide [
	^ false
]