caching
buildMethodCache

	| classes methods dict |
	classes := Smalltalk allClasses asOrderedCollection.
	"classes addAll: (classes collect: [ :class | class class ]). Crashes on getting lower case of JapaneseEnvironment"
	methods := classes inject: OrderedCollection new into: [ :total :next | total addAll: next methodDict. total ].
	dict := IdentityDictionary new.
	methods do: [ :method | (self wordsOfMethod: method) do:
		[ :word | self add: method selector toDict: dict atValue: word onlyLetters ]].
	^ dict