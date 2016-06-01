caching
add: anObject toDict: aDict atValue: aString
	
	| set |
	set := aDict at: aString ifAbsentPut: [ Set new ].
	set add: anObject