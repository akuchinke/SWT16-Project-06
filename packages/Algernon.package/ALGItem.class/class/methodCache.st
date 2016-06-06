caching
methodCache

	"this comment is important for testing: xdasy "
	methodCache ifNil: [ methodCache := self buildMethodCache ].
	^ methodCache