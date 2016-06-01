caching
buildMethodCache

	| classes methods dict |
	classes := Smalltalk allClasses asOrderedCollection.
	methods := classes inject: OrderedCollection new into: [ :total :next | total addAll: next methodDict. total ].
	dict := Dictionary new.
	methods do: [ :method | (self wordsOfMethod: method) do:
		[ :word | self add: method selector toDict: dict atValue: word onlyLetters ]].
	^ dict