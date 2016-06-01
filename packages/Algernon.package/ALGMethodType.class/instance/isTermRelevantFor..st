relevance
isTermRelevantFor: aLowercaseString

	^ (ALGItem methodCache at: aLowercaseString asSymbol ifAbsent: [^ false]) includes: self typeObject