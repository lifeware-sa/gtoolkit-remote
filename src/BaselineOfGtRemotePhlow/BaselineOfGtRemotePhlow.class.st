"
Load the server for remote Gt access to a Pharo image.

Note that this package isn't normally loaded in a Gt image, see ${class:name=BaselineOfGToolkitRemote}$.
"
Class {
	#name : #BaselineOfGtRemotePhlow,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtRemotePhlow
}

{ #category : #baseline }
BaselineOfGtRemotePhlow >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec 
				baseline: 'PharoLink' 
					with: [ spec repository: 'github://feenkcom/Pharolink/src' ];
				package: 'GToolkit-RemotePhlow' 
					with: [ spec requires: #( PharoLink ) ];
				package: 'GToolkit-RemotePhlow-Examples' 
					with: [ spec requires: #( 'GToolkit-RemotePhlow' ) ]
		]
]